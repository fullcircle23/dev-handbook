.PHONY: lint-md check-links ci test test-python test-node

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

test-python:
	cd programming/python && \
	python -m pip install -e ".[test]" --quiet && \
	python -c "import dev_handbook_python as m; print('OK:', m.__file__)" && \
	python -m pytest -q

test-node:
	cd programming/javascript && npm ci || npm i && npx vitest run || true
