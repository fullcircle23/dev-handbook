.PHONY: lint-md check-links ci

lint-md:
	prettier "**/*.md" --write
	markdownlint "**/*.md" --ignore node_modules --fix
	markdownlint "**/*.md" --ignore node_modules

check-links:
	lychee --verbose --no-progress --accept 200,206,429 .

ci: lint-md check-links
	@echo "CI checks passed ✅"

spellcheck:
	codespell --ignore-words .codespellignore --skip="./.git,./node_modules" || true
