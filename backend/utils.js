const express = require('express')
const { MalformedInput, NotImplemented, NotFound, Unauthorized, DuplicateEntry } = require('./errors')

const createControllerRoutes = (controller, sessions) => {
    const router = express.Router()
    async function endpointHandler(method, req, res) {
        if (['post', 'put', 'patch', 'delete'].includes(req.method.toLowerCase()) && !['users', 'login'].includes(controller.resource)) {
            const token = req.headers['x-observatory-auth']
            if (!token || !sessions.has(token)) {
                res.status(401).json({error: 'Unauthorized request'})
                return
            }
        }

        if (req.query.format && req.query.format !== 'json') {
            return res.status(400).send()
        }

        try {
            const results = await method()

            if (typeof results === 'object') {
                res.setHeader('Content-Type', 'application/json');
                res.json(results)
            } else if (typeof results === 'boolean') {
                if (results) {
                    res.status(200).json({message: 'OK'})
                } else {
                    res.status(400).send()
                }
            }
        } catch(err) {
            console.log(err)

            if (err instanceof MalformedInput || err instanceof DuplicateEntry) {
                res.status(400).json({error: err.message})
            } else if (err instanceof NotFound) {
                res.status(404).send({error: 'Not Found'})
            } else if (err instanceof NotImplemented) {
                res.status(501).json({error: 'Method Not Implemented'})
            } else if (err instanceof Unauthorized) {
                res.status(401).json({error: 'Unauthorized'})
            } else {
                res.status(500).send()
            }
        }
    }

    router.get('/', (req, res) => endpointHandler(controller.list.bind(controller, req.query, req.headers['x-observatory-auth']), req, res))
    router.get('/:id', (req, res) => endpointHandler(controller.read.bind(controller, req.params.id, req.headers['x-observatory-auth']), req, res))
    router.post('/', (req, res) => endpointHandler(controller.create.bind(controller, req.body, req.headers['x-observatory-auth']), req, res))
    router.put('/:id', (req, res) => endpointHandler(controller.put.bind(controller, req.body, req.params.id, req.headers['x-observatory-auth']), req, res))
    router.patch('/:id', (req, res) => endpointHandler(controller.patch.bind(controller, req.body, req.params.id, req.headers['x-observatory-auth']), req, res))
    router.delete('/:id', (req, res) => endpointHandler(controller.delete.bind(controller, req.params.id, req.headers['x-observatory-auth']), req, res))

    return router
}

const createSimpleRouter = (key, sessions, dbConnection) => {
    const ControllerClass = require(`./controllers/${key}`)
    const controller = new ControllerClass(dbConnection, sessions)

    return createControllerRoutes(controller, sessions)
}

module.exports = {
    createControllerRoutes,
    createSimpleRouter
}
