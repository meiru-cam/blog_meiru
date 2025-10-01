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
npx quartz build --serve
```

Visit http://localhost:8080

## Deploy to GitHub Pages

1. Create a GitHub repository named `blog_radish` (or your preferred name)
2. From the `quartz` directory, run:
   ```bash
   npx quartz sync --no-pull
   ```

This will build and deploy your site automatically!

## Updating Your Site

After making changes to your content:

```bash
cd ../quartz
npx quartz sync --no-pull
```
