# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static project website for an IJCAI-ECAI 2026 survey paper on adversarial robustness in embodied AI. Deployed to GitHub Pages via `deploy.sh`.

## Repository Structure

- `index.html` — Single-page website with all CSS inlined (no build step, no external dependencies, no JS).
- `framework.pdf` — Framework diagram embedded in the page via `<img src="framework.pdf">`. Note: PDF-as-image rendering is browser-dependent; converting to PNG may improve compatibility.
- `deploy.sh` — Pushes the `main` branch to the GitHub Pages remote (`https://github.com/DYamIK/1.github.io.git`). Run from the repo root with `bash deploy.sh`.
- `README.md` — GitHub-facing project documentation. The Paper badge links to `ijcai26.pdf`, which is not yet in the repo.

## Key Details

- **No build system.** The site is a single self-contained HTML file. To preview, open `index.html` directly in a browser or serve with any static file server (e.g., `python3 -m http.server`).
- **Deployment:** `bash deploy.sh` commits everything and pushes to origin/main. The script uses `git add .` — be mindful of what is staged before running it.
- **Placeholder links:** The "Code (Coming Soon)" button in `index.html` currently links to `https://github.com` (generic). The "Paper" button links to `ijcai26.pdf`, which does not yet exist in the repo.
- **Responsive breakpoint** at 768px handles mobile layout in the embedded CSS.
- **Language attribute** is `zh-CN` in the HTML tag, though all visible content is in English.
