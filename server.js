import { createServer } from 'http'
import { parse } from 'url'
import next from 'next'

// Ambil PORT dari cPanel Environment Variable (atau default ke 3000 jika di lokal)
const port = parseInt(process.env.PORT || '3000', 10)
const dev = process.env.NODE_ENV !== 'production'

const app = next({ dev })
const handle = app.getRequestHandler()

app.prepare().then(() => {
  createServer((req, res) => {
    const parsedUrl = parse(req.url, true)
    handle(req, res, parsedUrl)
  }).listen(port)

  // Log status server
  console.log(
    `✅ Server running on http://localhost:${port} in ${dev ? 'development' : 'production'} mode`,
  )
})
