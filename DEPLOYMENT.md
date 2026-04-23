# 🚀 IWLI Website Deployment Guide

Complete instructions for deploying your IWLI website to various platforms.

## 1. Netlify (Best for Beginners)

### Steps:
1. Create a free account at [netlify.com](https://netlify.com)
2. Click "Add new site" → "Deploy manually"
3. Drag and drop the entire `iwlisite` folder
4. Your site will deploy instantly!

### With GitHub (Recommended):
1. Push your code to GitHub
2. On Netlify, click "New site from Git"
3. Choose GitHub and select your repository
4. Netlify auto-deploys on every push!

**Custom Domain**: In Netlify settings → "Domain settings" → add your domain

---

## 2. Vercel (Zero-Config Deployment)

### Steps:
1. Create an account at [vercel.com](https://vercel.com)
2. Click "New Project"
3. Import your GitHub repository
4. Click "Deploy" - done!

### CLI Alternative:
```bash
npm install -g vercel
vercel
```

---

## 3. GitHub Pages (Free Hosting)

### Steps:
1. Create a GitHub repository named `yourusername.github.io`
2. Push your files to the `main` branch:
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/yourusername.github.io.git
   git push -u origin main
   ```
3. Your site is live at `https://yourusername.github.io`

---

## 4. AWS S3 + CloudFront

### Steps:
1. Create an S3 bucket with name `yourdomain.com`
2. Upload all files from `iwlisite/` folder
3. Enable "Static website hosting" in S3 settings
4. Set Index document to `index.html`
5. (Optional) Create CloudFront distribution for CDN

```bash
# Using AWS CLI:
aws s3 sync . s3://yourdomain.com --delete
```

---

## 5. Traditional Hosting (cPanel, Bluehost, etc.)

### Steps:
1. Log in to your hosting control panel
2. Open File Manager
3. Navigate to `public_html`
4. Upload all files from `iwlisite/` using FTP or File Manager:
   - `index.html`
   - `css/` folder
   - `js/` folder
5. Access via `https://yourdomain.com`

### FTP Upload:
```bash
# Using FileZilla or similar FTP client:
Host: ftp.yourdomain.com
Username: [your hosting username]
Password: [your hosting password]
Port: 21
```

---

## 6. Docker Deployment

### Build Docker Image:
```bash
docker build -t iwli-website .
docker run -p 80:80 iwli-website
```

### Docker Compose:
```yaml
version: '3'
services:
  web:
    image: nginx:alpine
    volumes:
      - ./:/usr/share/nginx/html
    ports:
      - "80:80"
```

### Deploy to Docker Hub:
```bash
docker tag iwli-website yourusername/iwli-website
docker push yourusername/iwli-website
```

---

## 7. Heroku Deployment

### Steps:
1. Install Heroku CLI
2. Login: `heroku login`
3. Create app: `heroku create iwli-website`
4. Add Procfile:
   ```
   web: python -m http.server $PORT
   ```
5. Deploy:
   ```bash
   git push heroku main
   ```

---

## 8. Azure Static Web Apps

### Steps:
1. Create GitHub repo
2. Go to [portal.azure.com](https://portal.azure.com)
3. Create "Static Web App" resource
4. Connect your GitHub repository
5. Azure auto-deploys on push

---

## 9. Firebase Hosting

### Steps:
```bash
npm install -g firebase-tools
firebase login
firebase init hosting
# Select current directory
firebase deploy
```

---

## 10. CloudFlare Pages

### Steps:
1. Go to [pages.cloudflare.com](https://pages.cloudflare.com)
2. Connect GitHub repository
3. Set Build directory to `/`
4. Deploy!

---

## Custom Domain Setup

### Add Custom Domain:
1. Buy a domain from GoDaddy, Namecheap, or similar
2. Update nameservers to your hosting provider
3. Point to your deployed site:
   - **Netlify**: Add domain in Site settings
   - **Vercel**: Add domain in Project settings
   - **GitHub Pages**: Add CNAME file

### Example Nameserver Update:
```
Nameserver 1: ns1.yourhosting.com
Nameserver 2: ns2.yourhosting.com
```

---

## SSL/HTTPS Certificate

Most modern hosts include **free SSL** (Let's Encrypt):
- Netlify: ✅ Automatic
- Vercel: ✅ Automatic
- GitHub Pages: ✅ Automatic
- Heroku: ✅ Automatic
- CloudFlare: ✅ Automatic

For traditional hosting, check your control panel for "SSL Certificate" option.

---

## Performance Optimization Before Deployment

```bash
# Check site performance
# 1. Minify CSS (optional):
npm install -g csso-cli
csso css/styles.css -o css/styles.min.css

# 2. Use Lighthouse in Chrome DevTools
# 3. Test on WebPageTest.org
```

---

## Monitoring & Analytics

Add tracking after deployment:

### Google Analytics:
```html
<!-- Add to <head> before </head> -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_ID');
</script>
```

### Contact Form (Formspree):
```html
<form action="https://formspree.io/f/FORM_ID" method="POST">
  <input type="email" name="email" placeholder="your@company.com" />
  <button type="submit">Book Demo</button>
</form>
```

---

## Troubleshooting Deployment

### 404 Errors:
- Ensure `index.html` is in root directory
- Check file paths are relative (not absolute)

### Styles/JS Not Loading:
- Verify paths in HTML: `href="css/styles.css"`
- Check file names match exactly
- Clear browser cache (Ctrl+Shift+Delete)

### Images Not Showing:
- Use relative paths: `img/photo.jpg` (not `/img/photo.jpg`)
- Ensure image files are uploaded
- Check CORS if using external images

### Mobile Issues:
- Test responsiveness at [am-i-responsive.com](https://am-i-responsive.com)
- Check viewport meta tag is present
- Test touch interactions

---

## Quick Deployment Checklist

- [ ] All files uploaded (HTML, CSS, JS)
- [ ] File structure matches original
- [ ] No 404 errors in console
- [ ] Responsive design works on mobile
- [ ] All links work
- [ ] Contact email is configured
- [ ] Custom domain points to site
- [ ] HTTPS/SSL enabled
- [ ] Analytics set up
- [ ] Tested on Chrome, Firefox, Safari

---

## Need Help?

- **Netlify Support**: support.netlify.com
- **Vercel Support**: vercel.com/support
- **GitHub Help**: docs.github.com
- **Your Hosting Provider**: Check their help/support section

---

**Happy Deploying! 🚀**
