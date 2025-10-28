import clsx from 'clsx'
import React from 'react'

interface Props {
  className?: string
  loading?: 'lazy' | 'eager'
  priority?: 'auto' | 'high' | 'low'
}

export const Logo = (props: Props) => {
  const { loading: loadingFromProps, priority: priorityFromProps, className } = props

  const loading = loadingFromProps || 'lazy'
  const priority = priorityFromProps || 'low'

  return (
    /* eslint-disable @next/next/no-img-element */
    <div className="flex flex-row  items-center px-5 ">
      <img
        alt="Bung Mekanik Logo"
        width={42}
        height={44}
        loading={loading}
        fetchPriority={priority}
        decoding="async"
        // className={clsx('max-w-[10.375rem] w-full h-[38px]', className)}
        src="/logoBm.svg"
        // src="https://raw.githubusercontent.com/payloadcms/payload/main/packages/ui/src/assets/payload-logo-light.svg"
      />
      <h1 className="text-slate-600 dark:text-slate-200 font-semibold whitespace-nowrap text-2xl ml-4">
        Bung Mekanik
      </h1>
    </div>
  )
}
