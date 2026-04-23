# IWLI Website - Quick Deployment Script for Windows PowerShell
# Run these commands to deploy your website on Windows

# ============================================
# OPTION 1: LOCAL TESTING (Before Deployment)
# ============================================

# Test locally on port 3000
npm install
npm start

# Or use Python server (Python 3)
python -m http.server 8000

# Or use LiveServer extension if using VS Code


# ============================================
# OPTION 2: NETLIFY DEPLOYMENT (Fastest)
# ============================================

# Install Netlify CLI
npm install -g netlify-cli

# Deploy to Netlify
netlify deploy --prod

# Or manual deployment via web:
# 1. Go to netlify.com
# 2. Sign up or log in
# 3. Drag & drop iwlisite folder
# 4. Done! Site is live


# ============================================
# OPTION 3: VERCEL DEPLOYMENT
# ============================================

# Install Vercel CLI
npm install -g vercel

# Login to Vercel
vercel login

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

# View logs
docker-compose logs -f


# ============================================
# OPTION 5: GITHUB PAGES
# ============================================

# Initialize git repo
git init
git add .
git commit -m "Initial commit"
git branch -M main

# Go to GitHub.com and create new repository
# Then run:
git remote add origin https://github.com/yourusername/iwli-website.git
git push -u origin main

# Enable GitHub Pages:
# 1. Go to repository Settings
# 2. Find "Pages" section
# 3. Select "main" branch
# 4. Site will be at: https://yourusername.github.io/iwli-website


# ============================================
# OPTION 6: TRADITIONAL HOSTING (cPanel/FTP)
# ============================================

# Create zip for upload
Compress-Archive -Path "." -DestinationPath "iwli-website.zip"

# Then upload via:
# 1. FileZilla FTP client
# 2. cPanel File Manager
# 3. Or hosting provider's upload tool

# Upload these files/folders to public_html:
# - index.html
# - css/ folder
# - js/ folder
# - .htaccess
# - robots.txt
# - sitemap.xml


# ============================================
# OPTION 7: AWS S3 DEPLOYMENT
# ============================================

# Configure AWS CLI first
aws configure
# Enter: Access Key ID
# Enter: Secret Access Key
# Enter: Default region

# Sync files to S3
aws s3 sync . s3://yourdomain.com --delete

# Or upload individual files
aws s3 cp index.html s3://yourdomain.com/


# ============================================
# PERFORMANCE VERIFICATION AFTER DEPLOYMENT
# ============================================

# Check SSL Certificate
Invoke-WebRequest -Uri https://yourdomain.com -Headers @{"Accept-Encoding"="gzip"} -PassThru | Select-Object StatusCode, Headers

# Check if site is live
Test-Connection yourdomain.com

# Check DNS
nslookup yourdomain.com
nslookup -type=MX yourdomain.com

# Check HTTP response headers
curl -i https://yourdomain.com


# ============================================
# PRE-DEPLOYMENT CHECKLIST
# ============================================

# 1. Update in index.html:
#    - Find: action="https://formspree.io/f/xyzabcde"
#    - Replace with your Formspree Form ID
#    - Find: id=G-XXXXXXXXXX
#    - Replace with your Google Analytics ID

# 2. Verify key files exist:
Get-Item index.html
Get-Item css/styles.css
Get-Item js/script.js

# 3. Test locally first:
npm start

# 4. Check HTML validity:
# Visit: https://validator.w3.org/
# Copy-paste your HTML code


# ============================================
# POST-DEPLOYMENT CHECKLIST
# ============================================

# 1. Test live site in browser
# Visit: https://yourdomain.com

# 2. Verify HTTPS (green lock)
# Check browser address bar

# 3. Test form submission
# Fill out email form
# Check inbox at support@iwli.ai

# 4. Submit to Google Search Console
# Go: https://search.google.com/search-console
# Add property: https://yourdomain.com
# Submit sitemap.xml

# 5. Monitor uptime
# Go: https://uptimerobot.com

# 6. Check analytics
# Go: https://analytics.google.com


# ============================================
# TROUBLESHOOTING COMMANDS
# ============================================

# List all files for upload
Get-ChildItem -Recurse -Path "." | Select-Object FullName

# Create backup before deployment
Compress-Archive -Path "." -DestinationPath "iwli-backup-$(Get-Date -Format 'yyyyMMdd').zip"

# Check if port 3000 is available
Test-NetConnection -ComputerName 127.0.0.1 -Port 3000

# Clear npm cache
npm cache clean --force

# Reinstall dependencies
Remove-Item node_modules -Recurse -Force
npm install


# ============================================
# ENVIRONMENT VARIABLES SETUP
# ============================================

# Create .env file from template
Copy-Item .env.example .env

# Edit .env with your values:
# Open .env in Notepad or VS Code
# Add your Google Analytics ID
# Add your Formspree Form ID
# Save file

# Never commit .env to git!
Add-Content .gitignore "`n.env"


# ============================================
# WINDOWS SPECIFIC TIPS
# ============================================

# If npm is not found, install Node.js from https://nodejs.org/
# Restart PowerShell after installing Node.js

# For FTP upload on Windows:
# 1. Download FileZilla: https://filezilla-project.org/
# 2. Enter hosting FTP credentials
# 3. Drag & drop files to server

# For long file paths on Windows (if needed):
# Run: fsutil behavior set disable8dot3 1


# ============================================
# QUICK REFERENCE COMMANDS
# ============================================

Write-Host "🚀 IWLI Website Deployment Guide" -ForegroundColor Green
Write-Host ""
Write-Host "Fastest deployment (Netlify):" -ForegroundColor Yellow
Write-Host "  netlify deploy --prod"
Write-Host ""
Write-Host "Local testing:" -ForegroundColor Yellow
Write-Host "  npm start"
Write-Host ""
Write-Host "Docker deployment:" -ForegroundColor Yellow
Write-Host "  docker-compose up -d"
Write-Host ""
Write-Host "GitHub Pages:" -ForegroundColor Yellow
Write-Host "  git push origin main"
Write-Host ""
Write-Host "For detailed instructions:" -ForegroundColor Yellow
Write-Host "  Read: GO-LIVE-TODAY.md"
Write-Host ""
Write-Host "For all options:" -ForegroundColor Yellow
Write-Host "  Read: DEPLOYMENT.md"
