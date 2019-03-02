const BaseController = require('./base')
const model = require('../models/shop')
const tagModel = require('../models/shop_tag')

module.exports = class ShopsController extends BaseController {
    constructor(dbConnection) {
        super('shops', new model(dbConnection))

        this.tagModel = new tagModel(dbConnection)

        this.formatResponse = item => {
            return {
                id: +item.id,
                name: item.name,
                address: item.address,
                lng: item.lng,
                lat: item.lat,
                tags: [], // fetched later
                withdrawn: !!item.withdrawn,
                telephone: item.telephone
            }
        }

        this.sortable_rules = {
            default_key: 'id',
            default_order: 'DESC',
            allowed_sort_keys: ['id', 'name'],
            allowed_order: ['ASC', 'DESC']
        }
    }

    async read(id) {
        const shop = await super.read(id)
        const tags = await this.tagModel.list({shopId: shop.id})
        shop.tags = tags.map(tag => tag.tag)

        return shop
    }

    async create(params) {
        const { tags } = params

        const shop = await super.create(params)

        if (typeof tags !== 'undefined') {
            const tagList = tags.split(',')
            for (const tag of tagList) {
                this.tagModel.insert({
                    shopId: shop.id,
                    tag
                })
            }
        }

        return this.read(shop.id)
    }

    async list(params={start: 0, count: 20, status: 'ACTIVE', sort: 'id|DESC'}) {
        const conditions = {}

        if (params.status === 'WITHDRAWN') {
            conditions.withdrawn = 1
        } else if (params.status === 'ACTIVE') {
            conditions.withdrawn = 0
        }

        return super.list(conditions, params)
    }
}
