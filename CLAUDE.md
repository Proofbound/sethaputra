# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Quarto book project about "The Dictionary Maker" by Bude Piccin Sethaputra. The book tells the story of So Sethaputra, a Thai political prisoner who created Thailand's first comprehensive English-Thai dictionary while imprisoned from 1939-1950.

## Architecture

The project uses Quarto to generate both HTML and PDF versions of the book from Markdown source files:

- **Source files**: `.qmd` files containing Quarto Markdown content
- **Configuration**: `_quarto.yml` defines project structure, output formats, and book metadata
- **Template variables**: `cc-config.yml` contains additional metadata used by CC Template CLI tool
- **Bibliography**: `references.bib` contains citation data referenced throughout the book
- **Generated outputs**: `_book/` directory contains rendered HTML and PDF files

The book is structured as chapters defined in `_quarto.yml`:
- `index.qmd` - Preface
- `intro.qmd` - Introduction  
- `summary.qmd` - Summary
- `references.qmd` - References section

## Common Commands

### Build the book
```bash
quarto render
```

### Preview the book during development
```bash
quarto preview
```

### Build specific format
```bash
quarto render --to html
quarto render --to pdf
```

### Clean build artifacts
```bash
quarto clean
```

## Content Development

- Book content is written in Quarto Markdown (`.qmd` files)
- Citations reference entries in `references.bib` using standard BibTeX format
- The `prompts/` directory contains outline generation templates for AI-assisted content creation
- PDF output supports CJK fonts (Chinese, Japanese, Korean) via XeLaTeX and the STSong font
- HTML output uses the Cosmo theme with search functionality enabled

## Publishing

The book is configured to publish to GitHub Pages at `https://ensembio.github.io/sethaputra/` with both HTML and downloadable PDF/EPUB formats available.