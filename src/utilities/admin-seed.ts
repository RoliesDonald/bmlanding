import { getPayload } from 'payload'
import { pathToFileURL } from 'url'
import path from 'path'
import { fileURLToPath } from 'url'
// import type { InitOptions } from 'payload/dist/payload-types' // Dihapus karena menyebabkan Error

const filename = fileURLToPath(import.meta.url)
const dirname = path.dirname(filename)

// Definisikan path config, seperti di deploy.yml
const PAYLOAD_CONFIG_PATH =
  process.env.PAYLOAD_CONFIG_PATH || path.resolve(dirname, '../payload.config.ts')

const run = async () => {
  // 1. Debug eksplisit di lingkungan Node.js
  const secret = process.env.PAYLOAD_SECRET
  const dbUrl = process.env.DATABASE_URL

  if (!secret) {
    console.error('❌ FATAL: PAYLOAD_SECRET is missing or not readable by Node.js!')
    process.exit(1)
  }

  // --- LOGGING DEBUG KRITIS ---
  console.log('✅ DEBUG: PAYLOAD_SECRET (Partial):', secret.substring(0, 5) + '...')
  console.log(
    '✅ DEBUG: DATABASE_URL (Partial):',
    dbUrl ? dbUrl.substring(0, 30) + '...' : 'MISSING',
  )
  console.log('🌱 Initializing Payload for Admin Seed...')

  // 2. Inisialisasi Payload menggunakan dynamic import
  try {
    const configPathUrl = pathToFileURL(PAYLOAD_CONFIG_PATH).href
    const importedConfig = await import(configPathUrl)

    if (!importedConfig.default) {
      throw new Error(`Payload config file at ${PAYLOAD_CONFIG_PATH} must use default export.`)
    }

    // PENTING: Menghapus assertion 'as InitOptions' yang menyebabkan error
    const payload = await getPayload({
      config: importedConfig.default,
    })

    console.log('🌱 Checking for existing admin user...')

    // 3. Logika Seeder Admin
    const users = await payload.find({ collection: 'users', limit: 1 })

    if (users.totalDocs === 0) {
      console.log('🌱 No admin found — creating default one...')
      await payload.create({
        collection: 'users',
        data: {
          name: process.env.ADMIN_NAME || 'Administrator',
          email: process.env.ADMIN_EMAIL,
          password: process.env.ADMIN_PASSWORD,
          roles: ['admin'],
        } as any,
      })
      console.log('✅ Default admin created:', process.env.ADMIN_EMAIL)
    } else {
      console.log('✅ Admin user already exists, skipping seed.')
    }

    process.exit(0)
  } catch (err) {
    // --- PENCETAKAN ERROR LENGKAP ---
    console.error('💥 Error during Payload initialization or seeding.')
    console.error('--------------------------------------------------')
    console.error(err) // Mencetak objek error lengkap, termasuk stack trace
    console.error('--------------------------------------------------')
    process.exit(1)
  }
}

run()
