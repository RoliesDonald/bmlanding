import { NextRequest, NextResponse } from 'next/server'
import { getPayload } from 'payload'
import config from '@/payload.config'

function getDummyRespones() {
  console.warn('Payload client initialization skipped in CI for API route.')
  return NextResponse.json(
    { docs: [], totalDocs: 0, limit: 0, page: 1, totalPages: 1 },
    { status: 200 },
  )
}

export async function GET() {
  // if (process.env.CI) {
  //   return getDummyRespones()
  // }
  const payload = await getPayload({ config })

  try {
    const data = await payload.find({
      collection: 'gallery',
      where: {
        isActive: { equals: true },
      },
      sort: 'order',
      depth: 2,
    })
    return NextResponse.json(data.docs)
  } catch (error) {
    return NextResponse.json({ error: 'Failed to get galleries' }, { status: 500 })
  }
}

export async function POST(req: NextRequest) {
  // if (process.env.CI) {

  //   console.warn('Payload client initialization skipped in CI for API POST route.')
  //   return NextResponse.json({ doc: { id: 'dummy-ci-id' } }, { status: 201 })
  // }
  const payload = await getPayload({ config })

  try {
    const formData = await req.formData()
    const payloadString = formData.get('_payload') as string

    const data = JSON.parse(payloadString)

    const newDoc = await payload.create({
      collection: 'gallery',
      data: data,
    })

    return NextResponse.json({ doc: newDoc }, { status: 201 })
  } catch (error) {
    console.error('Failed to create gallery photo via custom API:', error)
    return NextResponse.json({ error: 'Failed to create gallery photo' }, { status: 500 })
  }
}
