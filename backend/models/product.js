const BaseModel = require('./base')

module.exports = class Product extends BaseModel {
    constructor(connection) {
        super('products', connection)
        this.rules = {
            select: {
                allowed_query_keys: [
                    'id',
                    'name',
                    'barcode',
                    'withdrawn',
                    'category'
                ],
                selectable_fields: [
                    'id',
                    'name',
                    'description',
                    'category',
                    'barcode',
                    'withdrawn',
                    'brand',
                    'volume',
                ]
            },
            insert: {
                required_fields: [
                    'name',
                    'description',
                    'category'
                ],
                optional_fields: [
                    'withdrawn',
                    'barcode',
                    'brand',
                    'volume'
                ]
            },
            update: {
                updatable_fields: [
                    'name',
                    'description',
                    'barcode',
                    'category',
                    'withdrawn',
                    'brand',
                    'volume'
                ],
                allowed_query_keys: ['id']
            },
            delete: {
                allowed_query_keys: ['id']
            }
        }
    }
}
