# Personal Academic Website

Built with [Quartz](https://quartz.jzhao.xyz/). Content lives here in `30 - Blog/`, symlinked into `quartz/content/`.

## Quick Start

```bash
# Preview locally
cd ~/O_Documents/quartz && npx quartz build --serve
# Visit http://localhost:8080

# Deploy to GitHub Pages
cd ~/O_Documents/quartz && rm -rf public && npx quartz build && cd public && git init && git add -A && git commit -m "Update site" && git branch -M gh-pages && git remote add origin https://github.com/meiru-cam/blog_meiru.git && git push -f origin gh-pages
```

## Structure

| File | Purpose |
|---|---|
| `index.md` | Home page (bio, photo, news) |
| `Publications.md` | Publication list with venue badges |
| `Blog.md` | Blog index page |
| `blog/` | Individual blog posts |
| `images/` | Profile photo, paper figures |
| `files/` | CV and downloadable files |

## Writing Blog Posts

Create a new `.md` file in `blog/` with:

```yaml
---
title: "Your Post Title"
date: 2025-10-01
tags:
  - literature-review
  - tools
  - phd-life
  - academic-writing
---
```

## Adding Publications

Edit `Publications.md` — copy the HTML template at the bottom of the file for each new paper. Add paper figure images to `images/`.