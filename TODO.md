# Chatbot Mobile Transparency Fix

## Steps
- [x] 1. Identify issue: `#robot-panel` uses `var(--bg-card)` = `rgba(15, 25, 45, 0.4)` which is 40% transparent
- [x] 2. Update `index.html` inline styles:
  - Changed `#robot-panel` background to solid `rgba(5, 10, 20, 0.98)`
  - Added `backdrop-filter: blur(12px)`
  - Added mobile `@media (max-width: 480px)` rule for width and positioning
- [x] 3. Restart frontend and verify

