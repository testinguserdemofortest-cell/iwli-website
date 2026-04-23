# IWLI – AI Waste Automation Platform Website

A modern, responsive marketing website for IWLI (Industrial Waste Intelligence) — an AI-powered waste management platform featuring real-time analytics, IoT monitoring, route optimization, and compliance automation.

## 🚀 Features

- **Responsive Design** - Mobile-first approach, works on all devices
- **Particle Animation** - Dynamic background with animated particles
- **Smooth Scrolling** - Intersection Observer for scroll-reveal animations
- **Modern Tech Stack** - HTML5, CSS3, Vanilla JavaScript
- **Production-Ready** - Optimized assets and performance
- **SEO Friendly** - Semantic HTML and meta tags

## 📁 Project Structure

```
iwlisite/
├── index.html          # Main HTML file
├── css/
│   └── styles.css      # All styles (organized by section)
├── js/
│   └── script.js       # Particles, scroll reveal, interactions
├── README.md           # This file
├── package.json        # NPM configuration (for local server)
└── .gitignore          # Git ignore rules
```

## 🔧 Quick Start

### Option 1: Direct File Opening
Simply double-click `index.html` to open it in your browser.

### Option 2: Local Server (Recommended)
For better performance and live reload:

```bash
# Install dependencies
npm install

# Start local development server
npm start
```

The server will run at `http://localhost:3000`

### Option 3: Python Server
If you have Python installed:

```bash
# Python 3.x
python -m http.server 8000

# Python 2.x
python -m SimpleHTTPServer 8000
```

Then navigate to `http://localhost:8000`

## 📱 Sections

- **Hero** - Eye-catching introduction with stats
- **Features** - 9 core platform features
- **How It Works** - 5-step process breakdown
- **Waste Types** - Classification system for 11+ waste categories
- **Impact** - Environmental and financial metrics
- **Technology** - Tech stack overview
- **Compliance** - Regulatory compliance automation
- **Use Cases** - Target stakeholders and use cases
- **CTA** - Call-to-action section with email signup
- **Footer** - Navigation and contact links

## 🎨 Design System

### Colors
- **Primary Green**: `#00ff88` (Neon Green)
- **Secondary Blue**: `#00d4ff` (Neon Blue)
- **Dark Background**: `#0a0e17`
- **Glass Effect**: `rgba(26,31,46,0.7)`

### Fonts
- **Display**: Orbitron (Monospace, weights: 400, 600, 700, 900)
- **Body**: Inter (Weights: 300, 400, 500, 600)

### Responsive Breakpoints
- **Mobile**: max-width 768px
- **Desktop**: 1200px max-width for content

## 🚀 Deployment

### Netlify (Recommended)
1. Push to GitHub
2. Connect repository to Netlify
3. Deploy with auto-builds

### Vercel
1. Push to GitHub
2. Import project on vercel.com
3. Deploy instantly

### Traditional Hosting
1. Upload `index.html`, `css/`, and `js/` folders to your web server
2. Ensure file structure is preserved
3. Access via your domain

### Docker
```dockerfile
FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```

## 📊 Performance

- **Lazy Loading**: Scroll-reveal animations
- **Optimized Particles**: GPU-accelerated canvas animations
- **No External Dependencies**: Pure vanilla JavaScript
- **CSS Optimized**: Minimal filesize, no preprocessors needed
- **Mobile Optimized**: Fast loading on mobile networks

## 🔐 Security

- No authentication required (marketing site)
- No sensitive data handling
- Safe for public deployment
- CORS-ready for API integration

## 📧 Contact

- **Email**: support@iwli.ai
- **Form**: CTA section with email input

## 📄 License

© 2026 IWLI · MIT License

## 🛠️ Development Tips

### Adding Sections
1. Create new `<section id="name">`
2. Add styles in `css/styles.css`
3. Add `.reveal` class for scroll animations
4. Update navigation links

### Customizing Colors
Edit CSS variables in `css/styles.css`:
```css
:root {
  --neon-green: #00ff88;
  --neon-blue: #00d4ff;
  /* ... etc */
}
```

### Changing Content
All content is in `index.html` between semantic tags. Update text, images, and links as needed.

## 🐛 Troubleshooting

- **Particles not showing?** - Check browser console for errors, ensure JavaScript is enabled
- **Styles not loading?** - Verify CSS file path is correct
- **Mobile menu not working?** - Confirm JavaScript is loaded
- **Images not showing?** - Check image paths and ensure files exist

## 📞 Support

For issues or questions about the website, contact: support@iwli.ai

---

**Happy deploying!** 🚀
