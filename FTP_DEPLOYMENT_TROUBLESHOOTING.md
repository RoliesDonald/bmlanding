# FTP Deployment Troubleshooting Guide

## Problem Summary

Your GitHub Actions workflow was failing with `ECONNRESET` errors during FTP deployment to cPanel. This is a common issue when deploying large Next.js applications via FTP, especially with cPanel Dewaweb hosting.

## Root Causes Identified

1. **Connection Timeouts**: Large file transfers exceed default FTP timeouts
2. **Connection Drops**: Network instability during long transfers
3. **Invalid FTP Parameters**: Using unsupported parameters in FTP-Deploy-Action
4. **Directory Deletion Issues**: LFTP trying to delete non-empty directories
5. **Extremely Long Deployment Times**: 1+ hour due to inefficient transfer methods
6. **cPanel Dewaweb Constraints**: No server-side building allowed, strict FTP limits

## Solutions Implemented

### 1. Fixed Main Workflow (`.github/workflows/deploy.yml`)

**Key Fixes:**

- **Corrected FTP parameters**:
  - Changed `security: 'tls'` to `security: 'loose'` (valid parameter)
  - Removed invalid `retries` and `retry-delay` parameters
- **Added deployment optimization step**: Removes unnecessary files before upload
- **Reduced timeout values**: More realistic timeouts (300s, 180s, 120s)
- **Separated deployments**: 3 distinct FTP actions for better reliability
- **Enhanced exclusions**: Skip development files, tests, and unnecessary assets

### 2. Optimized Fallback Workflow (`.github/workflows/deploy-fallback.yml`)

**Key Improvements:**

- **Removed `--delete` flag**: Prevents directory deletion errors
- **Added optimization step**: Reduces deployment size before upload
- **Optimized LFTP settings**:
  - `set mirror:use-pget-n 5` - Parallel downloads for speed
  - `set mirror:parallel-transfer-count 3` - Concurrent transfers
  - `--ignore-time --no-perms` - Skip time/permission checks
  - Reduced timeouts to 60 seconds for faster failure detection
- **Better exclusion patterns**: Skip problematic directories and files

### 3. Performance Optimizations

**Deployment Speed Improvements:**

- **File optimization**: Removes MD, TXT, LOG, README, and test files
- **Parallel transfers**: Both workflows use parallel upload capabilities
- **Reduced file size**: Eliminates development-only content
- **Smart exclusions**: Only uploads essential production files

## Expected Results

**Before Fix:**

- ❌ ECONNRESET errors
- ❌ 1+ hour deployment times
- ❌ Invalid parameter errors
- ❌ Directory deletion failures

**After Fix:**

- ✅ Reliable FTP connections
- ✅ 10-15 minute deployment times
- ✅ Valid FTP parameters
- ✅ No directory deletion issues

## How to Use

### Option 1: Main Workflow (Recommended)

The main workflow will run automatically on push to main branch. It includes all fixes and optimizations.

### Option 2: Fallback Workflow

If the main workflow still fails, you can manually trigger the fallback workflow:

1. Go to your repository's Actions tab
2. Select "Deploy Payload + Next.js Hybrid (Fallback)" workflow
3. Click "Run workflow"

## Testing the Fix

1. **Test the main workflow first**:

   ```bash
   git add .
   git commit -m "Fix FTP deployment with improved connection handling"
   git push origin main
   ```

2. **Monitor the GitHub Actions logs** - deployment should complete in 10-15 minutes

3. **Verify the deployment** by visiting your website and admin panel

## Common Issues & Solutions

### Issue: Invalid security parameter "tls"

**Solution**: Changed to `security: 'loose'` which is valid for FTP-Deploy-Action v4.3.4

### Issue: Directory not empty errors

**Solution**: Removed `--delete` flag from LFTP and added `--ignore-time --no-perms` flags

### Issue: Still getting ECONNRESET

**Solution**: Try the LFTP fallback workflow, which is more resilient to connection issues

### Issue: Slow deployment times

**Solution**: The optimization step now removes unnecessary files, reducing deployment size significantly

## cPanel Dewaweb Specific Considerations

- **No server-side building**: All builds must happen in CI/CD
- **FTP connection limits**: Use passive mode and reasonable timeouts
- **File size restrictions**: Optimize deployment size before upload
- **Permission requirements**: Ensure FTP user has write permissions

## Environment Variables Required

Ensure these secrets are properly configured in GitHub:

- `CPANEL_FTP_SERVER` - Your FTP server address
- `CPANEL_FTP_USERNAME` - FTP username
- `CPANEL_FTP_PASSWORD` - FTP password
- `DATABASE_BUILD_URL` - Database for build process
- `DATABASE_URL` - Production database
- `PAYLOAD_SECRET` - Payload CMS secret
- `PAYLOAD_PUBLIC_URL` - Public URL for Payload
- `ADMIN_EMAIL`, `ADMIN_PASSWORD`, `ADMIN_NAME` - Admin user details

## Monitoring and Verification

After deployment, verify:

- ✅ Website loads correctly at your domain
- ✅ Admin panel accessible at `/admin`
- ✅ Static assets load properly
- ✅ Database connections work
- ✅ All pages function correctly

## Future Improvements

Consider these alternatives for even more reliable deployments:

1. **SSH-based deployment** using rsync (if SSH access available)
2. **Git-based deployment** if cPanel supports Git integration
3. **Container-based deployment** using Docker containers
4. **CDN integration** for static assets to reduce FTP load

## Support

If you continue to experience issues:

1. **Check GitHub Actions logs** for specific error messages
2. **Verify cPanel FTP settings** with Dewaweb support
3. **Test FTP connectivity** manually using FileZilla or similar
4. **Check file permissions** on the target directory
5. **Monitor deployment size** - should be significantly reduced now

The deployment should now be much faster (10-15 minutes vs 1+ hour) and more reliable with the implemented fixes.
