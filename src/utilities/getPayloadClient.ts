import { getPayload } from 'payload'
import configPromise from '@payload-config'
// HANYA impor tipe dasar yang terjamin diexport dari 'payload' (untuk menghindari masalah circular dependency)
import type { Payload, PaginatedDocs } from 'payload'

// --- 1. Definisi Tipe Global untuk Cache ---
// Deklarasikan interface untuk objek cache yang akan disimpan di global
interface CachedPayload {
  client: Payload | null
  promise: Promise<Payload> | null
}

// Tambahkan definisi 'payload' ke global Node.js/Window (untuk menghindari 'any')
declare global {
  // eslint-disable-next-line no-var
  var payload: CachedPayload
}
// -------------------------------------------

// LOGIK MOCK PALING ROBUST: Gunakan mock jika PAYLOAD_BUILD_MOCK disetel ATAU jika CI disetel ke 'true'
const useMockClient = !!process.env.PAYLOAD_BUILD_MOCK || process.env.CI === 'true'

// Inisialisasi cache Payload menggunakan tipe yang didefinisikan
let cached = global.payload

if (!cached) {
  // Inisialisasi jika belum ada
  cached = global.payload = { client: null, promise: null }
}

// Definisikan tipe Options yang minimalis untuk kebutuhan mock (menggantikan tipe Options generik yang sulit diimpor)
type MockOptions = {
  limit?: number
  page?: number
  // Tambahkan properti lain yang mungkin diperlukan oleh fungsi find/findGlobal Anda
  slug?: string
}

// Objek Mock yang Aman
const mockClient: Partial<Payload> = {
  // Menggunakan tipe 'any' dan 'MockOptions' untuk menghindari impor tipe generik yang bermasalah.
  find: async (options: MockOptions): Promise<PaginatedDocs<any>> =>
    ({
      docs: [],
      totalDocs: 0,
      limit: options.limit || 10,
      page: options.page || 1,
      totalPages: 1,
      hasNextPage: false,
      hasPrevPage: false,
      pagingCounter: options.page || 1,
    }) as PaginatedDocs<any>,

  // findGlobal hanya mengembalikan objek kosong dan menggunakan 'any'
  findGlobal: async (): Promise<any> => ({}) as any,

  // FIX: Menggunakan 'as any' untuk menghindari error tipe yang memerlukan semua CollectionSlug terdefinisi
  collections: {} as any,
  versions: {},
  // FIX: Menggunakan 'as any' untuk menghindari error tipe yang memerlukan semua GlobalSlug terdefinisi
  globals: {} as any,
  db: {} as any,
  auth: {} as any,

  // FIX: Fungsi count harus mengembalikan objek { totalDocs: number }
  count: async () => ({ totalDocs: 0 }) as any,

  create: async () => ({}) as any,
  update: async () => ({}) as any,
  delete: async () => ({}) as any,
  init: async () => ({}) as any,
}

export const getPayloadClient = async (): Promise<Payload> => {
  // --- DEBUG LOG AGRESF & CI CHECK ---
  console.log(`[DEBUG] ENV.PAYLOAD_BUILD_MOCK: ${process.env.PAYLOAD_BUILD_MOCK}`)
  console.log(`[DEBUG] ENV.CI: ${process.env.CI}`)
  console.log(`[DEBUG] useMockClient: ${useMockClient}`)

  // Jika useMockClient bernilai true, mock akan diaktifkan
  if (useMockClient) {
    console.log(
      'MOCK PAYLOAD CLIENT: Returning safe mock client for CI build. Database connection skipped.',
    )
    return mockClient as unknown as Payload
  }
  // --------------------------------------------------------

  // Logika inisialisasi Payload standar (hanya dijalankan di Dev/Prod)
  if (cached.client) return cached.client

  if (!cached.promise) {
    // Menghilangkan 'as any' di sini karena configPromise sudah memiliki tipe yang benar
    cached.promise = getPayload({ config: configPromise })
  }

  try {
    const client = await cached.promise
    cached.client = client
    return client
  } catch (err) {
    console.error('Payload initialization failed:', err)
    throw err
  }
}
