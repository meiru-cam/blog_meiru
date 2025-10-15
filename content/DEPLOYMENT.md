# Deployment Instructions

## Initial Setup

### 1. Create GitHub Repository

1. Go to https://github.com/new
2. Create a repository named `blog_radish` (or any name you prefer)
3. Keep it public (required for free GitHub Pages)
4. Don't initialize with README (we already have content)

### 2. Update Configuration

Edit `../quartz/quartz.config.ts` and update:

```typescript
baseUrl: "yourusername.github.io/blog_radish",
```

Replace:
- `yourusername` with your actual GitHub username
- `blog_radish` with your repository name (if different)

If you want to use a custom domain like `yourname.com`, set:
```typescript
baseUrl: "yourname.com",
```

### 3. Deploy to GitHub Pages

From the `quartz` directory:

```bash
cd ../quartz

# First time setup - this will prompt for your GitHub repo
npx quartz sync --no-pull
```

When prompted:
- Enter your repository URL: `https://github.com/yourusername/blog_radish`
- Choose "upstream" branch name: `v4`
- Choose deployment branch: `gh-pages` (or `main` depending on your preference)

### 4. Enable GitHub Pages

1. Go to your repository on GitHub
2. Settings → Pages
3. Source: Deploy from branch
4. Branch: Select `gh-pages` and `/ (root)`
5. Save

Your site will be live at: `https://yourusername.github.io/blog_radish/`

## Updating Your Site

After editing any content in `blog_radish/`:

```bash
cd ../quartz
npx quartz sync --no-pull
```

This will rebuild and push changes to GitHub.

## Local Preview

To preview changes before deploying:

```bash
cd ../quartz
npx quartz build --serve
```

Visit http://localhost:8080

Press Ctrl+C to stop the server.

## Customization

### Change Your Name and Info

1. Edit `index.md` - Update bio, research interests, education
2. Edit social links - Add your LinkedIn, Google Scholar, etc.
3. Update `../quartz/quartz.config.ts` - Change `pageTitle`

### Add Your Profile Photo

1. Add `profile.jpg` to `images/` folder
2. Update path in `index.md` if needed

### Add Your CV

1. Add `CV.pdf` to `files/` folder
2. The download link in `index.md` will work automatically

### Customize Colors/Theme

Edit `../quartz/quartz.config.ts` in the `theme.colors` section.

## Troubleshooting

**Build fails:** Check that all markdown files have valid frontmatter

**Site not updating:** Make sure you ran `npx quartz sync --no-pull` from the quartz directory

**404 errors:** Verify `baseUrl` in `quartz.config.ts` matches your GitHub Pages URL
