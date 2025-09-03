.PHONY: install build clean publish publish-dry-run help

# Default target
help:
	@echo "Available commands:"
	@echo "  make install      - Install dependencies"
	@echo "  make build        - Build TypeScript to JavaScript"
	@echo "  make clean        - Remove build artifacts"
	@echo "  make publish-dry-run - Test publish without actually publishing"
	@echo "  make publish      - Build and publish to npm"

# Install dependencies
install:
	npm install

# Build the project
build:
	npm run build

# Clean build artifacts
clean:
	npm run clean

# Dry run publish (test without actually publishing)
publish-dry-run: build
	npm publish --dry-run --access=public

# Build and publish to npm
publish: build
	npm publish --access=public

# Quick rebuild
rebuild: clean build