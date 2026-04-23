/* ── PARTICLES ── */
const canvas = document.getElementById('particles-canvas');
const ctx = canvas.getContext('2d');
let particles = [];

function resize() {
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;
}

resize();
window.addEventListener('resize', resize);

function createParticle() {
  return {
    x: Math.random() * canvas.width,
    y: Math.random() * canvas.height,
    r: Math.random() * 1.5 + 0.3,
    dx: (Math.random() - 0.5) * 0.3,
    dy: (Math.random() - 0.5) * 0.3,
    alpha: Math.random() * 0.5 + 0.1,
    color: Math.random() > 0.5 ? '0,255,136' : '0,212,255'
  };
}

for (let i = 0; i < 80; i++) {
  particles.push(createParticle());
}

function animateParticles() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  
  particles.forEach(p => {
    ctx.beginPath();
    ctx.arc(p.x, p.y, p.r, 0, Math.PI * 2);
    ctx.fillStyle = `rgba(${p.color},${p.alpha})`;
    ctx.fill();
    
    p.x += p.dx;
    p.y += p.dy;
    
    if (p.x < 0 || p.x > canvas.width) p.dx *= -1;
    if (p.y < 0 || p.y > canvas.height) p.dy *= -1;
  });
  
  requestAnimationFrame(animateParticles);
}

animateParticles();

/* ── SCROLL REVEAL ── */
const reveals = document.querySelectorAll('.reveal');
const observer = new IntersectionObserver(entries => {
  entries.forEach(e => {
    if (e.isIntersecting) {
      e.target.classList.add('visible');
    }
  });
}, { threshold: 0.12 });

reveals.forEach(el => observer.observe(el));

/* ── GLITCH EFFECT ── */
const glitchElements = document.querySelectorAll('h2, h3');
glitchElements.forEach(el => {
  // Set data-text if not already set
  if (!el.getAttribute('data-text')) {
    el.setAttribute('data-text', el.textContent);
  }
  
  el.addEventListener('mouseenter', () => {
    el.classList.add('glitch-hover');
    setTimeout(() => el.classList.remove('glitch-hover'), 500);
  });
});

// Random glitch bursts on scroll
let glitchTimeout;
window.addEventListener('scroll', () => {
  const heroTitle = document.querySelector('.hero-title');
  if (heroTitle && Math.random() < 0.1) { // 10% chance per scroll event
    heroTitle.classList.remove('glitch');
    setTimeout(() => heroTitle.classList.add('glitch'), 50);
  }
  clearTimeout(glitchTimeout);
});

// Robot assistant interactions
document.addEventListener('DOMContentLoaded', () => {
  const robotButton = document.getElementById('robot-button');
  const robotPanel = document.getElementById('robot-panel');
  const robotClose = document.getElementById('robot-close');

  if (robotButton && robotPanel && robotClose) {
    robotButton.addEventListener('click', () => {
      robotPanel.style.display = 'block';

      // Optional: simulate "AI is working" by changing text
      // Enhanced workflow animation with waste process steps
      const workflowSteps = [
        { msg: '👁️ Scanning waste bins...', icon: '👁️' },
        { msg: '🔄 Segregating waste types...', icon: '🔄' },
        { msg: '♻️ Processing for recycling...', icon: '♻️' },
        { msg: '🚛 Optimizing collection routes...', icon: '🚛' },
        { msg: '📊 Generating compliance report...', icon: '📊' },
        { msg: '✅ Process complete! Ready for pickup.', icon: '✅' }
      ];
      let stepIndex = 0;
      const p = robotPanel.querySelector('p');
      const ul = robotPanel.querySelector('ul');
      if (p && ul) {
        const workflowInterval = setInterval(() => {
          const step = workflowSteps[stepIndex];
          p.textContent = step.msg;
          // Animate list items with process icons
          ul.innerHTML = `
            <li>${step.icon} Sensors active</li>
            <li>${step.icon} AI classifying</li>
            <li>${step.icon} Route optimized</li>
          `;
          stepIndex = (stepIndex + 1) % workflowSteps.length;
        }, 2000);

        // Stop animation on close
        robotClose.onclick = () => {
          robotPanel.style.display = 'none';
          clearInterval(workflowInterval);
        };
      }
    });
  }
});

