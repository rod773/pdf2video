# PDF to Video Generator

Transform any PDF into a dynamic video presentation with animated slides, transitions, and text effects.

[![Deploy with Vercel](https://vercel.com/button)](https://pdf2video-chi.vercel.app)

## Features

- **PDF Upload** — Drag and drop or click to upload any PDF file
- **Video Generation** — Converts PDF pages into animated video slides
- **Text Effects** — Typewriter, fade-in, and slide animations for text content
- **Transitions** — Smooth transitions between slides (fade, slide, zoom)
- **Export Options** — Download as MP4 or WebM format
- **Fully Client-Side** — No server processing, all data stays in your browser
- **Responsive Design** — Works on desktop and mobile devices

## Live Demo

**https://pdf2video-chi.vercel.app**

## Getting Started

### Option 1: Docker

```bash
# Build the image
docker build -t pdf2video .

# Run the container
docker run -d -p 8080:80 pdf2video
```

Open http://localhost:8080 in your browser.

### Option 2: Direct

Simply open `index.html` in any modern browser. No build step required.

### Option 3: Vercel

```bash
npm i -g vercel
vercel
```

## Tech Stack

- **Frontend**: Vanilla HTML, CSS, JavaScript
- **Containerization**: Docker with nginx:alpine
- **Deployment**: Vercel
- **No dependencies** — Zero external libraries

## Project Structure

```
pdf2video/
├── index.html        # Main application
├── Dockerfile        # Docker build configuration
├── nginx.conf        # Nginx server configuration
├── .dockerignore     # Docker build context exclusions
└── .gitignore        # Git exclusions
```

## How It Works

1. **PDF Parsing** — Uses PDF.js to extract text and render pages as images
2. **Scene Generation** — Each PDF page becomes a video scene with configurable duration
3. **Animation Engine** — CSS and JavaScript animations for text reveals and transitions
4. **Video Recording** — MediaRecorder API captures the canvas as video
5. **Export** — Generates downloadable MP4/WebM files

## Browser Support

- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+

## License

MIT
