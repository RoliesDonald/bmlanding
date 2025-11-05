import { getPayload, SanitizedConfig } from 'payload'
import path from 'path'
import { fileURLToPath, pathToFileURL } from 'url'

// Resolusi path untuk kompatibilitas ES Modules
const filename = fileURLToPath(import.meta.url)
const dirname = path.dirname(filename)

const PAYLOAD_CONFIG_PATH =
  process.env.PAYLOAD_CONFIG_PATH || path.resolve(dirname, '../payload.config.ts')

const run = async () => {
  // 1. Verifikasi Environment Variables
  if (!process.env.PAYLOAD_SECRET) {
    console.error('❌ FATAL: PAYLOAD_SECRET is missing or unreadable in the Node.js process!')
    console.error(`Attempted Config Path: ${PAYLOAD_CONFIG_PATH}`)
    process.exit(1)
  }

  console.log('🌱 Starting Payload Initialization for Admin Seed...')

  try {
    // --- PERBAIKAN UTAMA DI SINI ---
    // 1. Ubah path lokal menjadi format URL file (wajib untuk dynamic import)
    const configUrl = pathToFileURL(PAYLOAD_CONFIG_PATH).toString()

    // 2. Dynamic Import untuk mendapatkan objek konfigurasi (SanitizedConfig)
    const importedConfig = await import(configUrl)
    const configObject: SanitizedConfig = importedConfig.default as SanitizedConfig

    // 3. Inisialisasi Payload menggunakan objek konfigurasi
    const payload = await getPayload({ config: configObject })
    // -------------------------------

    console.log('🌱 Checking for existing "users" collection...')

    // Logika Seeder Admin: Cari pengguna pertama
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
      console.log('✅ Default admin created successfully:', process.env.ADMIN_EMAIL)
    } else {
      console.log('✅ Admin user already exists, skipping seed.')
    }

    process.exit(0)
  } catch (err) {
    console.error('💥 Error during Payload initialization or seeding:', (err as Error).message)
    process.exit(1)
  }
}

run()
