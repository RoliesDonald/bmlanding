import { NextResponse } from 'next/server'
import { getPayload } from 'payload'
import config from '@/payload.config'

export async function GET() {
  //   const payload = await getPayload()
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
