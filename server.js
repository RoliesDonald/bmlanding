import express from 'express'
import payload from 'payload'
import next from 'next'
import dotenv from 'dotenv'

dotenv.config()

const app = express()
const port = process.env.PORT || 3000
const dev = process.env.NODE_ENV !== 'production'
const nextApp = next({ dev })
const handle = nextApp.getRequestHandler()

nextApp.prepare().then(async () => {
  await payload.init({
    secret: process.env.PAYLOAD_SECRET,
    mongoURL: process.env.DATABASE_URL,
    express: app,
    onInit: async () => {
      payload.logger.info(`Payload Admin URL: ${process.env.PAYLOAD_PUBLIC_URL}/admin`)
    },
  })

  app.use((req, res) => handle(req, res))

  app.listen(port, async () => {
    console.log(`✅ Server running on port ${port}`)
  })
})
