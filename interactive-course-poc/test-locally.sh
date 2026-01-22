#!/bin/bash

echo "🚀 Opening Interactive Course in Jupyter Lab..."
echo ""
echo "This will:"
echo "  1. Start Jupyter Lab"
echo "  2. Open in your browser"
echo "  3. Let you test all the interactive features"
echo ""
echo "To stop: Press Ctrl+C in this terminal"
echo ""
echo "Starting in 3 seconds..."
sleep 3

cd week01
jupyter-lab lecture.ipynb
