'use client'
import { useHeaderTheme } from '@/providers/HeaderTheme'
import Link from 'next/link'
import { usePathname } from 'next/navigation'
import React, { useEffect, useState } from 'react'

import type { Header } from '@/payload-types'

import { Logo } from '@/components/Logo/Logo'
import { HeaderNav } from './Nav'
import { Icon, LucideSquareMenu, LucideX } from 'lucide-react'
import { L } from 'vitest/dist/chunks/reporters.d.DL9pg5DB.js'

interface HeaderClientProps {
  data: Header
}

export const HeaderClient: React.FC<HeaderClientProps> = ({ data }) => {
  /* Storing the value in a useState to avoid hydration errors */
  const [theme, setTheme] = useState<string | null>(null)
  const { headerTheme, setHeaderTheme } = useHeaderTheme()
  const pathname = usePathname()
  const [isOpen, setIsOpen] = useState(false)

  useEffect(() => {
    setHeaderTheme(null)
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [pathname])

  useEffect(() => {
    if (headerTheme && headerTheme !== theme) setTheme(headerTheme)
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [headerTheme])

  return (
    <header
      className="container rounded-lg  shadow-md shadow-slate-700/50 sticky top-1 z-20 backdrop-blur-md"
      {...(theme ? { 'data-theme': theme } : {})}
    >
      <div className="py-6 flex justify-between items-center">
        <Link href="/">
          <Logo loading="eager" priority="high" className="invert dark:invert-0 w-32" />
        </Link>
        <button
          className="md:hidden p-2 text-slate-200 rounded-md focus:outline-none focus:right-2 focus:ring-slate-400"
          onClick={() => setIsOpen(!isOpen)}
        >
          {/* {isOpen ? <LucideX /> : <LucideSquareMenu />} */}
        </button>
        <HeaderNav data={data} />
      </div>
    </header>
  )
}
