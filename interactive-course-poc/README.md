# Interactive Course - Proof of Concept

This is a proof of concept for transforming the AN7914 Data Analytics and Modelling course materials into an interactive, web-based learning experience.

## Features

### ✨ What's Included

1. **Interactive Code Execution** - Students can run Python code directly in their browser using Thebe (powered by JupyterLite)
2. **Auto-Graded Exercises** - Instant feedback on exercise solutions with assertion-based checking
3. **Warm, Encouraging Style** - Preserves the friendly teaching approach from the original materials
4. **No Installation Required** - Everything runs in the browser
5. **GitHub Pages Hosting** - Free, fast, and accessible from anywhere

### 📚 Current Content

This proof of concept includes:
- **Week 1: Python Fundamentals** - Interactive lecture notes covering:
  - Simple Python programs
  - Values and types
  - Variables
  - Print function and formatting
  - String methods
  - Integer operations
  - Creating functions

- **Week 1: Exercises** - 9 auto-graded exercises with:
  - Instant feedback
  - Helpful hints
  - Progressive difficulty
  - Challenge exercises

## How It Works

### Technology Stack

- **Jupyter Book** - Modern documentation framework for computational narratives
- **Sphinx Thebe** - Enables live code execution in the browser
- **JupyterLite/Pyodide** - Python running entirely in the browser via WebAssembly
- **GitHub Actions** - Automatic building and deployment
- **GitHub Pages** - Free hosting

### Interactive Features

1. **Live Code** - Click the 🚀 button → "Live Code" to activate interactive mode
2. **Edit & Run** - Modify any code example and execute it immediately
3. **Auto-Checking** - Exercises provide instant feedback with ✓ or ❌ messages
4. **No Server Needed** - Everything runs client-side in the browser

## Local Development

### Prerequisites

```bash
# Python 3.9 or higher
python --version

# Install requirements
pip install -r requirements.txt
```

### Building the Book

```bash
# Navigate to the proof of concept folder
cd interactive-course-poc

# Build the book
jupyter-book build .

# The output will be in _build/html/
# Open _build/html/index.html in your browser
```

### Live Preview During Development

```bash
# Install jupyter-book if not already installed
pip install jupyter-book

# Clean previous builds (optional)
jupyter-book clean .

# Build with live reload (requires sphinx-autobuild)
pip install sphinx-autobuild
sphinx-autobuild . _build/html

# This will start a server at http://127.0.0.1:8000
```

## Deployment to GitHub Pages

### Automatic Deployment

The repository includes a GitHub Actions workflow (`.github/workflows/deploy-interactive-course.yml`) that automatically:
1. Builds the Jupyter Book when changes are pushed
2. Deploys to GitHub Pages

### Manual Deployment

```bash
# Build the book
jupyter-book build .

# Deploy to GitHub Pages
ghp-import -n -p -f _build/html -b gh-pages
```

### Enable GitHub Pages

1. Go to your repository settings
2. Navigate to **Pages** section
3. Under **Source**, select **GitHub Actions**
4. The site will be available at: `https://[username].github.io/[repo-name]/`

## Structure

```
interactive-course-poc/
├── _config.yml              # Jupyter Book configuration
├── _toc.yml                 # Table of contents
├── intro.md                 # Landing page
├── requirements.txt         # Python dependencies
├── references.bib          # Bibliography (for citations)
├── week01/
│   ├── lecture.ipynb       # Interactive Week 1 lecture
│   └── exercises.ipynb     # Auto-graded exercises
└── README.md               # This file
```

## Expanding the Course

### Adding New Weeks

1. Create a new folder (e.g., `week02/`)
2. Add lecture notebook: `week02/lecture.ipynb`
3. Add exercises notebook: `week02/exercises.ipynb`
4. Update `_toc.yml` to include new chapters:

```yaml
chapters:
  - file: week01/lecture
    title: "Week 1: Python Fundamentals"
  - file: week01/exercises
    title: "Week 1: Exercises"
  - file: week02/lecture
    title: "Week 2: Conditionals and Loops"
  - file: week02/exercises
    title: "Week 2: Exercises"
```

### Converting PDF Content to Notebooks

Use the existing PDFs as reference and convert to `.ipynb` format:
1. Copy the text content
2. Create markdown cells for explanations
3. Create code cells for examples
4. Add interactive elements (hints, admonitions, exercises)
5. Include auto-checking in exercise cells

### Exercise Auto-Checking Pattern

```python
# Student code here
answer = # Their solution

# Auto-check
try:
    assert condition, "❌ Error message"
    print("✓ Correct!")
except AssertionError as e:
    print(f"{e}")
```

## Pedagogical Approach

This proof of concept maintains the original course's teaching style:

✅ **Friendly and encouraging tone**
✅ **Progressive complexity**
✅ **Practical examples**
✅ **Hands-on practice**
✅ **Error normalization** ("Don't worry if you encounter errors...")

### New Enhancements

🌟 **Immediate feedback** - Students don't wait to know if they're correct
🌟 **Active learning** - Students experiment with code, not just read
🌟 **Accessibility** - No installation barriers for students
🌟 **Self-paced** - Students can work through materials at their own speed

## Benefits Over PDF Format

| Feature | PDF | Interactive Version |
|---------|-----|-------------------|
| Run code | ❌ No | ✅ Yes, in browser |
| Edit examples | ❌ No | ✅ Yes, instantly |
| Exercise feedback | ❌ No | ✅ Instant |
| Installation required | ⚠️ Yes (Python, libraries) | ✅ No |
| Accessibility | ⚠️ Limited | ✅ Any device with browser |
| Searchable | ✅ Yes | ✅ Yes + better navigation |
| Version control | ⚠️ Manual | ✅ Git-based |

## Next Steps

### For Full Course Implementation

1. **Convert remaining weeks** - Transform Weeks 2-13 PDFs into interactive notebooks
2. **Add datasets** - Include CSV files and make them downloadable
3. **Create final projects** - Interactive Streamlit dashboard tutorials
4. **Add assessments** - More comprehensive auto-graded assignments
5. **Include videos** - Embed explanatory videos if available
6. **Student progress tracking** - Implement optional progress saving (requires backend)

### Potential Enhancements

- **Downloadable notebooks** - Let students download .ipynb files
- **Discussion forums** - Integrate with GitHub Discussions
- **Code snippets library** - Reusable code examples
- **Cheat sheets** - Quick reference guides
- **Glossary** - Interactive terminology reference
- **Certificate of completion** - For finishing all exercises

## Technical Notes

### Why Thebe + JupyterLite?

- **Thebe** provides seamless integration with Jupyter Book
- **JupyterLite** runs a full Python kernel in the browser (Pyodide/WebAssembly)
- **No server costs** - Everything is static and runs client-side
- **Fast and reliable** - No backend = no server downtime

### Browser Compatibility

Works on:
- ✅ Chrome/Edge (recommended)
- ✅ Firefox
- ✅ Safari
- ⚠️ Mobile browsers (works but better on desktop)

### Limitations

- **First load is slow** - Pyodide needs to download (~50MB), but then cached
- **No `input()` in interactive mode** - Users modify code instead of typing input
- **Limited packages** - Only packages available in Pyodide (Pandas, NumPy, etc. are included)

## Contributing

To expand this proof of concept:

1. Fork the repository
2. Create a new branch
3. Add/modify content in `interactive-course-poc/`
4. Test locally with `jupyter-book build .`
5. Submit a pull request

## Questions?

For questions or issues with this proof of concept, please open an issue in the repository.

---

**Built with ❤️ using Jupyter Book and JupyterLite**
