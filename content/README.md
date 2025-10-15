# Personal Academic Website

This is the content folder for my personal academic website built with [Quartz](https://quartz.jzhao.xyz/).

## Structure

- `index.md` - Home page with bio and links
- `Publications.md` - List of academic publications
- `Blog.md` - Blog index page
- `blog/` - Individual blog posts (markdown files)
- `images/` - Profile photo and other images
- `files/` - CV and downloadable files

## Writing Blog Posts

Create a new markdown file in the `blog/` folder with frontmatter:

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

Available tags:
- `literature-review` - Reading notes and paper summaries
- `tools` - Software and tool usage tips
- `phd-life` - PhD experiences and advice
- `academic-writing` - Writing tips

## Preview Locally

From the `quartz` directory:

```bash
cd /Users/zhangmeiru/O_Documents/quartz
npx quartz build --serve
```

Visit http://localhost:8080

## Updating Your Site

After making changes to your content in `blog_radish/`:

```bash
cd /Users/zhangmeiru/O_Documents/quartz && rm -rf public && npx quartz build && cd public && git init && git add -A && git commit -m "Update site" && git branch -M gh-pages && git remote add origin https://github.com/meiru-cam/blog_meiru.git && git push -f origin gh-pages
```