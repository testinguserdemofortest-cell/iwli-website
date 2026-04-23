#!/bin/bash
# IWLI Website - Quick Deployment Script
# Run these commands to deploy your website

# ============================================
# OPTION 1: LOCAL TESTING (Before Deployment)
# ============================================

# Test locally on port 3000
npm install
npm start

# Or use Python server
python -m http.server 8000

# Or use SimpleHTTPServer (Mac)
python -m SimpleHTTPServer 8000


# ============================================
# OPTION 2: NETLIFY DEPLOYMENT (Fastest)
# ============================================

# Install Netlify CLI
npm install -g netlify-cli

# Deploy to Netlify
netlify deploy --prod

# Or manual deployment via drag & drop
# 1. Go to netlify.com
# 2. Drag & drop iwlisite folder
# 3. Done!


# ============================================
# OPTION 3: VERCEL DEPLOYMENT
# ============================================

# Install Vercel CLI
npm install -g vercel

# Deploy
vercel --prod


# ============================================
# OPTION 4: DOCKER DEPLOYMENT
# ============================================

# Build Docker image
docker build -t iwli-website .

# Run container locally
docker run -p 80:80 -p 443:443 iwli-website

# Or use Docker Compose (easier)
docker-compose up -d

# Stop container
docker-compose down


# ============================================
# OPTION 5: GITHUB PAGES
# ============================================

# Initialize git repo
git init
git add .
git commit -m "Initial commit"
git branch -M main

# Create repo on GitHub first, then:
git remote add origin https://github.com/yourusername/iwli-website.git
git push -u origin main

# Enable GitHub Pages in repo settings -> main branch


# ============================================
# OPTION 6: TRADITIONAL HOSTING (cPanel/FTP)
# ============================================

# Zip files for FTP upload
zip -r iwli-website.zip .

# Then upload via FileZilla FTP client or cPanel File Manager:
# 1. index.html
# 2. css/ folder
# 3. js/ folder
# 4. .htaccess
# 5. robots.txt
# 6. sitemap.xml


# ============================================
# OPTION 7: AWS S3 DEPLOYMENT
# ============================================

# Configure AWS CLI first
aws configure

# Sync files to S3
aws s3 sync . s3://yourdomain.com --delete

# Create CloudFront distribution via AWS Console


# ============================================
# PERFORMANCE VERIFICATION AFTER DEPLOYMENT
# ============================================

# Check SSL Certificate
curl -I https://yourdomain.com

# Check GZIP compression
curl -I -H "Accept-Encoding: gzip" https://yourdomain.com

# Check DNS
nslookup yourdomain.com
dig yourdomain.com

# Check HTTP/2
curl -I --http2 https://yourdomain.com


# ============================================
# PRE-DEPLOYMENT CHECKLIST
# ============================================

# 1. Update these in index.html:
#    - Formspree form ID
#    - Google Analytics ID
#    - Contact email

# 2. Verify files exist:
ls -la index.html css/styles.css js/script.js

# 3. Check HTML validity:
# Visit: https://validator.w3.org

# 4. Test locally first:
npm start

# 5. Check all links work
# Visit each section, click all buttons


# ============================================
# POST-DEPLOYMENT CHECKLIST
# ============================================

# 1. Test live site
curl -I https://yourdomain.com

# 2. Submit sitemap
# Visit: https://search.google.com/search-console
# Add property, submit sitemap.xml

# 3. Monitor uptime
# https://uptimerobot.com

# 4. Check analytics
# https://analytics.google.com

# 5. Run Lighthouse
# Visit: https://pagespeed.web.dev
# Enter: https://yourdomain.com


# ============================================
# TROUBLESHOOTING COMMANDS
# ============================================

# Check for broken links
# Visit: https://www.deadlinkchecker.com

# Validate SSL certificate
# Visit: https://www.ssllabs.com/ssltest/

# Test mobile friendliness
# Visit: https://search.google.com/test/mobile-friendly

# Check performance
# Visit: https://gtmetrix.com/

# Verify DNS propagation
# Visit: https://mxtoolbox.com/

# View server response headers
curl -i https://yourdomain.com | head -20


# ============================================
# ENVIRONMENT VARIABLES
# ============================================

# Create .env file from template
cp .env.example .env

# Edit .env and add your values:
# VITE_GOOGLE_ANALYTICS_ID=G-XXXXXXXXXX
# VITE_FORMSPREE_FORM_ID=f/xxxxxxxx

# Note: Never commit .env to git!


# ============================================
# AUTOMATION SCRIPTS (Optional)
# ============================================

# Auto-deploy on Git push (GitHub Actions)
# Create .github/workflows/deploy.yml

# Auto-update SSL (if self-hosted with Certbot)
sudo certbot renew --dry-run

# Backup website files
tar -czf iwli-backup-$(date +%Y%m%d).tar.gz .

# Clean build artifacts
rm -rf dist/ node_modules/ *.zip


# ============================================
# QUICK REFERENCE
# ============================================

echo "🚀 IWLI Website Deployment Guide"
echo ""
echo "Fastest deployment (Netlify):"
echo "  netlify deploy --prod"
echo ""
echo "Local testing:"
echo "  npm start"
echo ""
echo "View all options:"
echo "  Read: GO-LIVE-TODAY.md"
echo ""
