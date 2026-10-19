# AGENTS.md — Kobukai Aikido Website

## Purpose
Static website for **Kobukai Aikido**, a martial arts association based in Rio Grande do Sul, Brazil. Built with Jekyll, deployed via GitHub Pages.

## Architecture

```text
.
├── _config.yml            # Jekyll config (pt-BR, pretty permalinks)
├── _data/
│   ├── dojos.yml          # Dojos list (city, sensei, contact)
│   ├── eventos.yml        # Events list (date, location, calendar link)
│   └── contato.yml        # Main contact info
├── _includes/
│   ├── header.html        # Site header + nav
│   └── footer.html        # Site footer
├── _layouts/
│   ├── default.html       # Base layout (header + footer)
│   └── page.html          # Page layout (hero banner + content)
├── _plugins/
│   └── event_filter.rb    # Exposes site.eventos_futuros (filters by date)
├── assets/
│   ├── css/style.css      # All styles (CSS vars in English)
│   └── images/            # Site images (logos, photos)
├── source-material/     #  DO NOT MODIFY — user's source materials
└── pages/                 # Site pages (aikido, tecnicas, dojos, eventos, contato)
```

## Content Rules
- All visible content in **Brazilian Portuguese**.
- Never invent information — use only provided sources (student manual, Wikipedia, Sansuikai website).
- `source-material/` folder is read-only. Copy files from there to `assets/` when needed.

## Conventions
- **Commit messages**: English, single line, imperative mood.
- **CSS variables**: English (`--bg-color`, `--color-accent`, `--spacing-md`).
- **Liquid templates**: Avoid `>` operator — the HTML linter flags it as a blocker. Use a plugin in `_plugins/` for date comparisons instead.
- **Inline HTML in Markdown**: Required for Jekyll layouts. MD033 lint warnings are expected — ignore them.
- **Git operations**: Run sequentially. Do not use `rm -f .git/index.lock`.
- **Build**: The user verifies the build themselves. Don't run `jekyll build`.

## Don'ts
- Never modify anything in `source-material/`.
- Never touch environment files: `Session.vim`, `.ruby-version`, `.gitignore`.
- Never install packages (`pip`, `gem`, `apt`). Use only what's available (ffmpeg for video).
- Never delete `_site/` or `.jekyll-cache/` — they're gitignored.
- Never push to remote.

## Visual Design
- Background: near-black `#0a0a0a`, dark blue `#1a1a2e`
- Text: white with gray secondary `#b8b8b8`
- Accent: coral `#e94560`
- Fonts: Inter (body) + Noto Sans JP (headings)
- Minimalist, Japanese-inspired aesthetic

## Data Model

### dojos.yml
Each entry: `cidade`, `estado`, `nome`, `senseis` (list of `{nome, graduacao}`), `instagram`, `endereco`, `telefone`, `email`, `horario`.

### eventos.yml
Each entry: `nome`, `data`, `data_fim`, `local`, `descricao`, `tipo`, `fotos`, `videos`, `pagina`, `link_calendario`. Future/past classification is automatic via plugin.

### contato.yml
Single record: `nome`, `cargo`, `telefone`, `email`, `instagram`.

## Institutions
- Kobukai → affiliated with **Sansuikai Brasil** (sansuikaibrasil.org)
- Sansuikai Brasil → affiliated with **Hombu Dojo / Aikikai Foundation** (aikikai.or.jp)
- Lineage: Morihei Ueshiba → Yoshimitsu Yamada → Sansuikai → Kobukai
