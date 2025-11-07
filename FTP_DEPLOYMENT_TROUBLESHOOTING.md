# FTP Deployment Troubleshooting Guide

## Problem Summary

Your GitHub Actions workflow was failing with `ECONNRESET` errors during FTP deployment to cPanel. This is a common issue when deploying large Next.js applications via FTP.

## Root Causes Identified

1. **Connection Timeouts**: Large file transfers can exceed default FTP timeouts
2. **Connection Drops**: Network instability during long transfers
3. **Single Point of Failure**: No retry mechanism or fallback options
4. **Concurrent Transfers**: Multiple directory transfers in a single action

## Solutions Implemented

### 1. Improved Main Workflow (`.github/workflows/deploy.yml`)

**Key Improvements:**

- **Separated deployments**: Split into 3 distinct FTP actions
  - Main application (`.next/standalone/`)
  - Static assets (`.next/static/`)
  - Public files (`public/`)
- **Enhanced FTP settings**:
  - `security: 'tls'` - Encrypted connection
  - `timeout: 300000` - 5-minute timeout (300 seconds)
  - `retries: 3` - Automatic retry on failure
  - `retry-delay: 30` - 30-second delay between retries
  - `exclude` patterns to skip unnecessary files

### 2. Fallback Workflow (`.github/workflows/deploy-fallback.yml`)

**Alternative approach using LFTP:**

- Uses LFTP, a more robust FTP client
- **Better connection handling**:
  - `set ftp:passive-mode on` - Passive mode for better firewall compatibility
  - `set net:max-retries 3` - Retry attempts
  - `set net:timeout 30` - Connection timeout
  - `set net:reconnect-interval 30` - Reconnect delay
- **Parallel uploads**: `--parallel=3` for faster transfers
- **Mirror command**: More reliable synchronization

## How to Use

### Option 1: Main Workflow (Recommended)

The main workflow will run automatically on push to main branch. It includes all the improvements and should handle most connection issues.

### Option 2: Fallback Workflow

If the main workflow still fails, you can manually trigger the fallback workflow:

1. Go to your repository's Actions tab
2. Select "Deploy Payload + Next.js Hybrid (Fallback)" workflow
3. Click "Run workflow"

### Option 3: Hybrid Approach

You can modify the main workflow to include a fallback step that triggers if the FTP deployment fails.

## Additional Recommendations

### 1. cPanel FTP Configuration

Check with your hosting provider to ensure:

- FTP access is properly configured
- Passive mode is enabled on the server
- Connection timeouts are set appropriately (recommended: 300+ seconds)
- File size limits are sufficient for your deployment

### 2. Environment Variables

Ensure these secrets are properly configured in GitHub:

- `CPANEL_FTP_SERVER` - Your FTP server address
- `CPANEL_FTP_USERNAME` - FTP username
- `CPANEL_FTP_PASSWORD` - FTP password

### 3. Monitoring

After deployment, verify:

- All files are uploaded correctly
- The application runs without errors
- Static assets are accessible
- Admin panel loads properly

## Testing the Fix

1. **Test the main workflow first**:

   ```bash
   git add .
   git commit -m "Fix FTP deployment with improved connection handling"
   git push origin main
   ```

2. **Monitor the GitHub Actions logs** for successful deployment

3. **If issues persist**, try the fallback workflow manually

4. **Verify the deployment** by visiting your website and admin panel

## Common Issues & Solutions

### Issue: Still getting ECONNRESET

**Solution**: Try the LFTP fallback workflow, which is more resilient to connection issues.

### Issue: Timeout during large file uploads

**Solution**: The increased timeout (300 seconds) should handle this. If not, consider excluding large development files with the `exclude` parameter.

### Issue: Partial uploads

**Solution**: Both workflows now use `--delete` and mirror synchronization to ensure clean deployments.

### Issue: Permission errors

**Solution**: Ensure your FTP user has write permissions to the target directory.

## Future Improvements

Consider these alternatives for more reliable deployments:

1. **SSH-based deployment** using rsync
2. **Git-based deployment** if cPanel supports it
3. **CI/CD pipelines** provided by hosting services
4. **Container-based deployment** using Docker

## Support

If you continue to experience issues:

1. Check the GitHub Actions logs for specific error messages
2. Verify your cPanel FTP settings with your hosting provider
3. Test FTP connectivity manually using an FTP client
4. Consider reaching out to cPanel support for FTP configuration assistance
