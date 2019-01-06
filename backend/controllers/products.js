const BaseController = require('./base')
const model = require('../models/product')

module.exports = class ProductsController extends BaseController {
    constructor(dbConnection) {
        super(new model(dbConnection))
    }

    async list() {
        const list = await this.model.list()
        return {products: list}
    }

    async create(params) {
        let product = this.validate_post_params(params)

        const result = await this.model.insert(product)

        return result.affectedRows > 0
    }

    async read(id) {
        return {products: (await this.model.list({id}))}
    }

    async put(params, id) {
        let product_details = this.validate_put_params(params)
        console.log(product_details)

        const result = await this.model.update(product_details, {id})

        return result.affectedRows > 0
    }

    async patch(params, id) {
        let product_details = this.validate_patch_params(params)
        console.log(product_details)

        const result = await this.model.update(product_details, {id})

        return result.affectedRows > 0
    }

    async delete(id) {
        let role = 'user'
        if (role == 'admin') {
            var result = await this.model.delete({id})
        } else {
            var result = await this.model.update({'withdrawn': true}, {id})
        }

        return result.affectedRows > 0
    }
}
