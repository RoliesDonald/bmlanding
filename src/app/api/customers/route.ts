import { NextResponse } from 'next/server'
import { getPayload } from 'payload'
import config from '@/payload.config'

export async function GET() {
  // if (process.env.CI) {
  //   console.warn('Payload client initialization skipped in CI for /api/customers')
  //   return NextResponse.json(
  //     { docs: [], totalDocs: 0, limit: 0, page: 1, totalPages: 1 },
  //     { status: 200 },
  //   )
  // }
  const payload = await getPayload({ config })

  try {
    const data = await payload.find({
      collection: 'customer',
      where: {
        isActive: { equals: true },
      },
      sort: 'name',
    })
    return NextResponse.json(data.docs)
  } catch (error) {
    return NextResponse.json({ error: 'Failed to fetch customers' }, { status: 500 })
  }
  return
}
