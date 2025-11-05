import { getPayload } from 'payload'
import configPromise from '@payload-config'
import type { Payload } from 'payload'

interface CachedPayload {
  client: Payload | null
  promise: Promise<Payload> | null
}

declare global {
  var payload: CachedPayload
}

const isCI = process.env.CI === 'true' || !!process.env.CI

// Inisialisasi cache Payload
let cached = (global as any).payload

if (!cached) {
  cached = global.payload = { client: null, promise: null }
}

// Definisikan tipe dasar untuk mock client
interface MockPayloadClient extends Payload {
  //   find: (args: any) => Promise<any>
  //   findGlobal: (args: any) => Promise<any>
}

// Objek Mock yang Aman
const mockClient: Partial<Payload> = {
  // Mock data fetching functions to return safe, empty structures
  find: async () => ({
    docs: [],
    totalDocs: 0,
    limit: 1,
    page: 1,
    totalPages: 1,
    hasNextPage: false,
    hasPrevPage: false,
    pagingCounter: 1,
  }),
  findGlobal: async () => ({}) as any,

  // Properti dan metode wajib (untuk memenuhi interface Payload)
  config: {} as any,
  collections: {},
  versions: {},
  globals: {},
  db: {},
  auth: {},

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
    return mockClient as unknown as Payload
  }
  // --------------------------------------------------------

  // Logika inisialisasi Payload standar (hanya dijalankan di Dev/Prod)
  if (cached.client) return cached.client

  if (!cached.promise) {
    // Pastikan ini menggunakan configPromise yang diimpor dari atas
    cached.promise = getPayload({ config: configPromise })
  }

  try {
    const client = await cached.promise
    cached.client = client
  } catch (err) {
    console.error('Payload initialization failed:', err)
    throw err
  }

  return cached.client
}
