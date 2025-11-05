import { getPayload } from 'payload'
import configPromise from '@payload-config'
import type { Payload } from 'payload'

const isCI = process.env.CI === 'true' || !!process.env.CI

// Inisialisasi cache Payload
let cached = (global as any).payload

if (!cached) {
  cached = (global as any).payload = { client: null, promise: null }
}

// Definisikan tipe dasar untuk mock client
interface MockPayloadClient extends Payload {
  //   find: (args: any) => Promise<any>
  //   findGlobal: (args: any) => Promise<any>
}

// Objek Mock yang Aman
const mockClient = {
  // Mock data fetching functions to return safe, empty structures
  find: async () => ({ docs: [], totalDocs: 0, limit: 1, page: 1, totalPages: 1 }),
  findGlobal: async () => ({}),

  // Properti dan metode wajib (untuk memenuhi interface Payload)
  config: {} as any,
  collections: {} as any,
  versions: {} as any,
  globals: {} as any,
  db: {} as any,
  auth: {} as any,

  count: async () => 0,
  create: async () => ({}) as any,
  update: async () => ({}) as any,
  delete: async () => ({}) as any,
  init: async () => ({}) as any,
  shutdown: async () => ({}) as any,
} as unknown as MockPayloadClient

export const getPayloadClient = async (): Promise<Payload> => {
  // --- CI CHECK: Kembalikan klien mock di lingkungan CI ---
  if (isCI) {
    console.log('MOCK PAYLOAD CLIENT: Returning safe mock client for CI build.')
    return mockClient
  }
  // --------------------------------------------------------

  // Logika inisialisasi Payload standar (hanya dijalankan di Dev/Prod)
  if (cached.client) return cached.client

  if (!cached.promise) {
    // Pastikan ini menggunakan configPromise yang diimpor dari atas
    cached.promise = getPayload({ config: configPromise as any })
  }

  try {
    cached.client = await cached.promise
  } catch (err) {
    console.error('Payload initialization failed:', err)
    throw err
  }

  return cached.client
}
