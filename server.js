// server.js
import 'dotenv/config'
import express from 'express'
import next from 'next'
import payload from 'payload'

const app = express()
const PORT = process.env.PORT || 3000
const dev = process.env.NODE_ENV !== 'production'
const nextApp = next({ dev })
const nextHandler = nextApp.getRequestHandler()

async function start() {
  // Start Next.js first
  await nextApp.prepare()

  // Initialize Payload CMS
  await payload.init({
    secret: process.env.PAYLOAD_SECRET,
    express: app,
    onInit: () => {
      console.log(`🚀 Payload CMS ready at ${process.env.PAYLOAD_PUBLIC_URL}/admin`)
    },
  })

  // Next.js request handler (for frontend routes)
  app.get('*', (req, res) => nextHandler(req, res))

  // Start server
  app.listen(PORT, (err) => {
    if (err) throw err
    console.log(`✅ Server running on port ${PORT}`)
    console.log(`🌐 Public URL: ${process.env.PAYLOAD_PUBLIC_URL}`)
  })
}

start()
