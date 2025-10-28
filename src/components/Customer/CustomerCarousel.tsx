'use client'

import { useLayoutEffect, useRef, useState } from 'react'
import type { Customer } from '@/payload-types'

const CustomersCarousel = ({ customers }: { customers: Customer[] }) => {
  const carouselRef = useRef<HTMLDivElement>(null)
  const [canScrollLeft, setCanScrollLeft] = useState(false)
  const [canScrollRight, setCanScrollRight] = useState(true)

  const checkScroll = () => {
    if (!carouselRef.current) return
    const { scrollLeft, scrollWidth, clientWidth } = carouselRef.current
    setCanScrollLeft(scrollLeft > 0)
    setCanScrollRight(scrollLeft < scrollWidth - clientWidth)
  }

  useLayoutEffect(() => {
    const carousel = carouselRef.current
    if (carousel) {
      checkScroll()
      carousel.addEventListener('scroll', checkScroll)
      return () => carousel.removeEventListener('scroll', checkScroll)
    }
  }, [customers])

  const scroll = (direction: 'left' | 'right') => {
    if (!carouselRef.current) return
    const scrollAmount = 200
    carouselRef.current.scrollBy({
      left: direction === 'left' ? -scrollAmount : scrollAmount,
      behavior: 'smooth',
    })
  }

  if (!customers || customers.length === 0) {
    return null
  }

  return (
    <div className="relative w-full py-8 md:py-12">
      {canScrollLeft && (
        <button
          onClick={() => scroll('left')}
          className="absolute left-0 top-1/2 z-10 -translate-y-1/2 rounded-full bg-red-500 p-2 shadow-lg md:-left-4"
          aria-label="Scroll kiri"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            className="h-6 w-6"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path
              strokeLinecap="round"
              strokeLinejoin="round"
              strokeWidth={2}
              d="M15 19l-7-7 7-7"
            />
          </svg>
        </button>
      )}
      {canScrollRight && (
        <button
          onClick={() => scroll('right')}
          className="absolute right-0 top-1/2 z-10 -translate-y-1/2 rounded-full bg-red-500 p-2 shadow-lg md:-right-4"
          aria-label="Scroll kanan"
        >
          <svg
            xmlns="http://www.w3.org/2000/svg"
            className="h-6 w-6"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
          </svg>
        </button>
      )}
      <div>
        <div
          ref={carouselRef}
          className="flex gap-8 overflow-x-auto scroll-smooth px-4 md:px-8 justify-self-center"
          style={{ scrollSnapType: 'x mandatory' }}
        >
          {customers.map((customer) => (
            <div
              key={customer.id}
              className="flex flex-shrink-0 items-center justify-center"
              style={{ scrollSnapAlign: 'center' }}
            >
              <a
                href={customer.websiteUrl || '#'}
                target={customer.websiteUrl ? '_blank' : '_self'}
                rel="noopener noreferrer"
                className="group block transition-opacity hover:opacity-75"
                title={customer.customerName}
              >
                <img
                  src={`${customer.customerLogo.url}?w=200&h=100`}
                  alt={customer.customerName}
                  className="h-12 w-auto object-contain grayscale transition-all duration-300 group-hover:grayscale-0 md:h-16"
                />
              </a>
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}

export default CustomersCarousel
