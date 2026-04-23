# ✅ Production Deployment Checklist

Complete this checklist before going live with your domain.

## 🔐 Security Setup

- [ ] **HTTPS/SSL Certificate**
  - [ ] Purchase or generate free SSL via Let's Encrypt
  - [ ] Ensure HTTPS is enforced (redirect HTTP to HTTPS)
  - [ ] Set HSTS header (Strict-Transport-Security)
  - [ ] Test SSL at: https://www.ssllabs.com/ssltest/

- [ ] **Security Headers**
  - [ ] X-Content-Type-Options: nosniff
  - [ ] X-Frame-Options: SAMEORIGIN
  - [ ] X-XSS-Protection: 1; mode=block
  - [ ] Referrer-Policy: strict-origin-when-cross-origin

- [ ] **Hide Sensitive Files**
  - [ ] Deny access to .env, .git, package.json
  - [ ] Use .htaccess or nginx config provided

## 🌐 Domain Configuration

- [ ] **Purchase Domain**
  - [ ] Register at GoDaddy, Namecheap, or similar
  - [ ] Choose .com or relevant TLD

- [ ] **DNS Setup**
  - [ ] Point nameservers to hosting provider
  - [ ] Update A/AAAA records for IPv4/IPv6
  - [ ] Add MX records if using email
  - [ ] Create CNAME for www subdomain
  - [ ] Wait 24-48 hours for DNS propagation

- [ ] **Domain Validation**
  - [ ] Test: `nslookup iwli.ai`
  - [ ] Test: `dig iwli.ai`
  - [ ] Visit: http://yourdomain.com (should redirect to HTTPS)

## 📊 Analytics & Monitoring

- [ ] **Google Analytics**
  - [ ] Create GA4 property at: https://analytics.google.com
  - [ ] Get Measurement ID (format: G-XXXXXXXXXX)
  - [ ] Replace in index.html: `<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>`
  - [ ] Update tracking ID in gtag config

- [ ] **Google Search Console**
  - [ ] Add property at: https://search.google.com/search-console
  - [ ] Verify domain ownership
  - [ ] Submit sitemap.xml
  - [ ] Monitor crawl errors

- [ ] **Uptime Monitoring**
  - [ ] Set up UptimeRobot (free tier): https://uptimerobot.com
  - [ ] Monitor: https://iwli.ai/
  - [ ] Get alerts for downtime

## 📧 Email & Forms

- [ ] **Email Configuration**
  - [ ] Set up contact email (support@iwli.ai)
  - [ ] Update in index.html: `<a href="mailto:support@iwli.ai">`
  - [ ] Configure email forwarding if using custom domain

- [ ] **Form Handler (Formspree)**
  - [ ] Create account at: https://formspree.io
  - [ ] Create form endpoint
  - [ ] Get form ID (format: f/xxxxxxxx)
  - [ ] Update in index.html: `action="https://formspree.io/f/YOUR_ID"`
  - [ ] Test form submission before going live

## 🚀 Performance Optimization

- [ ] **Caching Headers**
  - [ ] Set Cache-Control headers for static assets (30+ days)
  - [ ] Set Cache-Control headers for HTML (1 day)
  - [ ] Verify with browser DevTools Network tab

- [ ] **Compression**
  - [ ] Enable GZIP compression on server
  - [ ] Test at: https://www.gidnetwork.com/tools/gzip-test.php
  - [ ] Should show "gzip: YES"

- [ ] **CDN (Optional but Recommended)**
  - [ ] Set up CloudFlare (free): https://www.cloudflare.com
  - [ ] Point nameservers to CloudFlare
  - [ ] Enable Auto Minify (CSS, JS, HTML)
  - [ ] Enable Brotli compression

- [ ] **Performance Testing**
  - [ ] Google PageSpeed: https://pagespeed.web.dev/
  - [ ] GTmetrix: https://gtmetrix.com/
  - [ ] WebPageTest: https://www.webpagetest.org/
  - [ ] Target: Lighthouse score 90+

## 📱 Responsiveness & Compatibility

- [ ] **Mobile Testing**
  - [ ] Test on iPhone 12/13, Android phones
  - [ ] Use Chrome DevTools mobile view (F12)
  - [ ] Verify touch interactions work
  - [ ] Check form inputs are accessible

- [ ] **Browser Compatibility**
  - [ ] Chrome (latest)
  - [ ] Firefox (latest)
  - [ ] Safari (latest)
  - [ ] Edge (latest)

- [ ] **Responsive Design Check**
  - [ ] Mobile (320px, 375px, 425px)
  - [ ] Tablet (768px, 1024px)
  - [ ] Desktop (1280px, 1920px)
  - [ ] Use: https://am-i-responsive.com

## 📝 SEO Setup

- [ ] **Meta Tags**
  - [ ] Title: compelling and under 60 characters
  - [ ] Description: under 160 characters
  - [ ] Canonical URL set correctly
  - [ ] All verified in index.html

- [ ] **Social Media Tags**
  - [ ] OG:image preview configured
  - [ ] Twitter Card set up
  - [ ] LinkedIn preview tested

- [ ] **Sitemap & Robots**
  - [ ] sitemap.xml created and valid
  - [ ] robots.txt configured
  - [ ] Submit to Google Search Console
  - [ ] Test at: https://www.xml-sitemaps.com/validate-xml-sitemap.html

- [ ] **Structured Data**
  - [ ] JSON-LD markup present
  - [ ] Test at: https://schema.org/validator/

## 🔗 Link & Content Verification

- [ ] **All Links Working**
  - [ ] Navigation links: #features, #how-it-works, etc.
  - [ ] External links: https://... (all start with HTTPS)
  - [ ] Email link: mailto:support@iwli.ai
  - [ ] Test with: https://www.deadlinkchecker.com

- [ ] **Content Review**
  - [ ] Spelling and grammar checked
  - [ ] All phone numbers formatted
  - [ ] Email addresses correct
  - [ ] No placeholder text remaining
  - [ ] Company information accurate

- [ ] **404 Page**
  - [ ] Create 404.html (optional but recommended)
  - [ ] Customize with brand styling
  - [ ] Add link back to home page

## 📦 Deployment Configuration

- [ ] **Choose Hosting Platform** (Pick one)
  - [ ] Netlify (Easiest)
  - [ ] Vercel
  - [ ] GitHub Pages
  - [ ] Traditional hosting (Apache/Nginx)
  - [ ] AWS S3 + CloudFront
  - [ ] Docker container

- [ ] **Deployment Files Present**
  - [ ] DEPLOYMENT.md reviewed
  - [ ] nginx.conf or .htaccess present
  - [ ] package.json configured
  - [ ] .gitignore configured

- [ ] **Environment Variables** (if applicable)
  - [ ] Formspree Form ID
  - [ ] Google Analytics ID
  - [ ] API keys secured
  - [ ] Never commit secrets to git

## ✨ Final Testing

- [ ] **Full Site Walkthrough**
  - [ ] Visit homepage
  - [ ] Scroll through each section
  - [ ] Verify animations work
  - [ ] Click all buttons and links
  - [ ] Test form submission
  - [ ] Check footer

- [ ] **Console Check** (Press F12)
  - [ ] No JavaScript errors
  - [ ] No 404 errors
  - [ ] No mixed content warnings
  - [ ] No security warnings

- [ ] **Lighthouse Audit**
  - [ ] Chrome DevTools → Lighthouse
  - [ ] Run audit for:
    - Performance
    - Accessibility
    - Best Practices
    - SEO
  - [ ] Target: 90+ on each metric

- [ ] **Real Device Testing**
  - [ ] Test on actual phones
  - [ ] Test on tablet
  - [ ] Test on multiple WiFi networks
  - [ ] Test on mobile data (4G/5G)

## 📣 Post-Launch

- [ ] **Monitor First 24 Hours**
  - [ ] Check error logs
  - [ ] Monitor uptime
  - [ ] Verify analytics data flowing
  - [ ] Test form submissions work

- [ ] **Social Media & Marketing**
  - [ ] Post launch announcement
  - [ ] Share on LinkedIn, Twitter
  - [ ] Update business listings
  - [ ] Add to email signature

- [ ] **Backup & Recovery**
  - [ ] Daily backups configured
  - [ ] Test restore procedure
  - [ ] Document recovery steps
  - [ ] Keep off-site backup copy

- [ ] **Documentation**
  - [ ] Document admin procedures
  - [ ] Note important passwords (secured)
  - [ ] Create runbook for common issues
  - [ ] Schedule regular maintenance

## 🎯 Success Criteria

✅ **Go-Live Ready When:**
- [ ] HTTPS working with A+ SSL rating
- [ ] Domain properly configured
- [ ] All links working
- [ ] Mobile responsive verified
- [ ] Analytics tracking active
- [ ] Forms submitting correctly
- [ ] Lighthouse score 90+
- [ ] No console errors
- [ ] Real device testing passed
- [ ] Team trained on updates

---

## Quick Pre-Launch Commands

```bash
# Test SSL
curl -I https://iwli.ai

# Check DNS
nslookup iwli.ai

# Test gzip
curl -I -H "Accept-Encoding: gzip" https://iwli.ai

# Check headers
curl -I https://iwli.ai

# Test mobile
# Visit: https://search.google.com/test/mobile-friendly
```

---

**🚀 You're ready to go live when you've checked all boxes!**

