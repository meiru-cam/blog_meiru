#!/bin/bash
# Publish content/ updates to v4. Refuses to ship non-content changes,
# enforces the v4 branch, stages content/ first, then rebases on origin
# with autostash so uncommitted symlink edits survive a divergent remote.
# Note: untracked files (e.g. a stray secret.env in repo root) are NOT
# part of the non-content guard by design — `git add content` won't grab
# them either, so they stay safely out of any commit.
set -e
cd "$(dirname "$0")"

branch="$(git symbolic-ref --short HEAD 2>/dev/null || true)"
if [ "$branch" != "v4" ]; then
  echo "publish.sh: not on v4 (current: ${branch:-detached}). Aborting." >&2
  exit 1
fi

if ! git diff --quiet -- ':!content' || \
   ! git diff --cached --quiet -- ':!content'; then
  echo "publish.sh: non-content changes detected. Resolve them first:" >&2
  git status --short -- ':!content' >&2
  exit 1
fi

git add content

if ! git pull --rebase --autostash; then
  echo "publish.sh: rebase failed. To recover:" >&2
  echo "  1. git rebase --abort" >&2
  echo "  2. git stash pop   # restores any autostashed content/ edits" >&2
  echo "  3. resolve the divergence, then re-run publish.sh" >&2
  exit 1
fi

if git diff --cached --quiet; then
  echo "publish.sh: nothing to publish."
  exit 0
fi

git commit -m "${*:-update blog}"
git push
