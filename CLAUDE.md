# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Quarto book project about "The Dictionary Maker" by Bude Piccin Sethaputra. The book tells the story of So Sethaputra, a Thai political prisoner who created Thailand's first comprehensive English-Thai dictionary while imprisoned from 1939-1950.

## Architecture

The project uses Quarto to generate both HTML and PDF versions of the book from Markdown source files:

- **Source files**: `.qmd` files containing Quarto Markdown content in `/en` (English) and `/th` (Thai) directories
- **Configuration**: `_quarto.yml` files define project structure, output formats, and book metadata
- **Template variables**: `cc-config.yml` contains additional metadata used by CC Template CLI tool
- **Bibliography**: `references.bib` contains citation data referenced throughout the book
- **Generated outputs**: `docs/` directory contains rendered HTML and PDF files

The book is structured with the following chapters (as defined in `en/_quarto.yml`):
- `index.qmd` - Preface
- `CH01-The_Last_Siamese.qmd` - Chapter 1: The Last Siamese
- `CH02-Siam_in_Transition.qmd` - Chapter 2: Siam in Transition
- `CH03-The_Elite_Under_Threat.qmd` - Chapter 3: The Elite Under Threat
- `CH04-The_Coup_and_Its_Aftermath.qmd` - Chapter 4: The Coup and Its Aftermath
- `CH05-Prison_University.qmd` - Chapter 5: Prison University
- `CH06-The_Dictionary_Project_Begins.qmd` - Chapter 6: The Dictionary Project Begins
- `CH07-Rising_Storm.qmd` - Chapter 7: Rising Storm
- `CH08-Tarutao_Exile.qmd` - Chapter 8: Tarutao Exile
- `CH09-War_Comes_to_Siam.qmd` - Chapter 9: War Comes to Siam
- `CH10-Survival_and_Perseverance.qmd` - Chapter 10: Survival and Perseverance
- `CH11-Liberation_and_Legacy.qmd` - Chapter 11: Liberation and Legacy
- `CH12-The_Dictionary_Makers_Gift.qmd` - Chapter 12: The Dictionary Maker's Gift
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

- Book content is written in Quarto Markdown (`.qmd` files) in both English (`/en`) and Thai (`/th`) versions
- Citations reference entries in `references.bib` using standard BibTeX format
- The `prompts/` directory contains outline generation templates for AI-assisted content creation
- PDF output supports CJK fonts (Chinese, Japanese, Korean) via XeLaTeX and the STSong font
- HTML output uses the Cosmo theme with search functionality enabled

## Author Review Tools

### Generate concatenated file for author edits
A script is available to create a single file containing all chapters for author review:

```bash
./concatenate_book.sh
```

This creates `dictionary-maker-all.md` with all `.qmd` files from `/en` concatenated in the correct order with clear section headers for easy parsing.

## Publishing

The book is configured to publish to GitHub Pages at `https://proofbound.github.io/sethaputra/` with both HTML and downloadable PDF/EPUB formats available.