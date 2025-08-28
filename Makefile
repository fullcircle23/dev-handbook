.PHONY: lint-md check-links ci test install-python test-python test-node

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

test: test-python test-node

install-python:
	cd programming/python && python -m pip install -e ".[test]"

test-python:
	cd programming/python && python -m pytest -q

test-node:
	cd programming/javascript && npm ci || npm i && npx vitest run || true
