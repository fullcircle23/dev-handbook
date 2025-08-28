# Contributor Checklist ✅

Before opening a PR, please make sure you have:

- [ ] Written concise, practical content (cheatsheet, guide, or example).
- [ ] Placed files in the correct topic folder (`git/`, `devops/`, `programming/`, etc.).
- [ ] Used **Conventional Commits** for your commit message (e.g., `feat(git): ...`).
- [ ] Followed Markdown style rules (one `#` per file, no skipped heading levels).
- [ ] Run local checks:

  ```bash
  make lint-md   # format & lint Markdown
  make test      # run code example tests (if applicable)
  ```

- [ ] Ensured CI (lint, link-check, spellcheck, tests) passes on your branch.

For details, see the full contributing guidelines below 👇

---

## Contributing Guidelines

Thank you for considering contributing to **dev-handbook** 🙌 This repository is intended as a
practical knowledge base for developers. To keep it useful and consistent, please follow the
guidelines below.

---

## General Principles

- Keep contributions **concise** and **practical** (cheatsheets, quick guides, runnable examples).
- Use **Markdown** for documentation.
- Add new content under the correct topic folder (e.g., `git/`, `devops/`, `programming/`).
- For bigger additions or structural changes, please open an **issue** or start a **discussion**
  first.

---

## Commit Messages

We follow [Conventional Commits](https://www.conventionalcommits.org/).

Examples:

```
feat(git): add example for cherry-pick
fix(docker): correct command for volume mount
docs(clean-code): expand section on naming conventions
```

---

## Markdown Style Rules

We use **markdownlint** in CI to enforce consistent style. Please follow these rules:

- **Single top-level heading per file** (`MD025`)
  - Use one `#` heading for the document title.
  - All other sections should use `##` or deeper.

- **Don’t skip heading levels** (`MD001`)
  - Nest headings sequentially (e.g., `##` → `###` → `####`).

- **Use hash-style headings** (`MD003`)
  - Always use `#`, `##`, `###` for headings (avoid underlined `===` or `---`).

- **No trailing punctuation in headings** (`MD026`)
  - Avoid headings ending with `.`, `:`, `;`, `!`, `?`.

- **Long lines allowed** (`MD013` disabled)
  - No hard line-length limit; rely on Prettier for wrapping.

- **Code fences** (`MD040` disabled)
  - Specifying a language (` ```bash `) is optional but encouraged for clarity.

---

## Local Checks

Before committing, run:

```bash
make lint-md
```

This will:

1. Format Markdown with Prettier.
2. Auto-fix common markdownlint issues.
3. Report any remaining style errors.
4. CI will re-check everything on pull requests.

---

## Adding Code Examples

If you add runnable code:

- Place it under the appropriate language folder (e.g., programming/python/,
  programming/javascript/).
- Include a minimal test in tests/ or **tests**/.
- Ensure tests pass locally before committing (make test).

---

By following these guidelines, you help keep the dev-handbook clean, consistent, and useful for
everyone 🚀

Thanks for your contribution!

- [Back to README](README.md)

---
