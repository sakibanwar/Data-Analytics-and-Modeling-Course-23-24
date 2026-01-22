#!/bin/bash

# Build script for the interactive course
# This script builds the Jupyter Book and creates the HTML output

echo "Building Interactive Course..."

# Clean previous builds
echo "Cleaning previous builds..."
jupyter-book clean . --all

# Try building with different methods

# Method 1: Try standard jupyter-book build
echo "Attempting standard build..."
if jupyter-book build . --builder html 2>&1 | tee build.log; then
    echo "✓ Build successful!"
    echo "Open _build/html/index.html in your browser"
    exit 0
fi

# Method 2: Try with myst build
echo "Standard build failed, trying myst build..."
if command -v myst &> /dev/null; then
    if myst build --html; then
        echo "✓ Build successful with myst!"
        exit 0
    fi
fi

# Method 3: Try direct sphinx build
echo "Trying direct sphinx build..."
if command -v sphinx-build &> /dev/null; then
    sphinx-build . _build/html -b html
    if [ $? -eq 0 ]; then
        echo "✓ Build successful with sphinx!"
        echo "Open _build/html/index.html in your browser"
        exit 0
    fi
fi

echo "❌ All build methods failed. Check build.log for details."
echo "You may need to install an older version of jupyter-book:"
echo "  pip install 'jupyter-book<1.0'"
exit 1
