# Quick Start Guide

## What Has Been Created

This proof of concept demonstrates an **interactive, web-based version** of the AN7914 course materials with:

✅ **Week 1 Complete** - Lecture and 9 auto-graded exercises
✅ **Interactive Code** - Students run Python in their browser
✅ **Instant Feedback** - Auto-checking on all exercises
✅ **Same Teaching Style** - Warm, encouraging, beginner-friendly
✅ **No Installation** - Works entirely in the browser

## Viewing the Content

### Option 1: Deploy to GitHub Pages (Recommended)

The easiest way is to let GitHub build and host it:

1. **Enable GitHub Pages**:
   - Go to your repository → Settings → Pages
   - Under "Source", select **"GitHub Actions"**
   - Wait a few minutes for the deployment

2. **Access the site**:
   - URL will be: `https://sakibanwar.github.io/Data-Analytics-and-Modeling-Course-23-24/`
   - Or check the Actions tab for the deployment URL

### Option 2: View Notebooks Directly

You can view the notebooks on GitHub:
- Navigate to `interactive-course-poc/week01/`
- Click on `lecture.ipynb` or `exercises.ipynb`
- GitHub will render them (but not interactive)

### Option 3: Build Locally

#### Using Python Virtual Environment (Recommended)

```bash
# Create a virtual environment
python3 -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install jupyter-book==0.15.1 sphinx-thebe

# Navigate to the folder
cd interactive-course-poc

# Build the book
jupyter-book build .

# Open the result
# The HTML files will be in _build/html/
# Open _build/html/index.html in your browser
```

## Testing the Interactive Features

Once the site is deployed:

1. **Navigate to Week 1 Lecture**
2. **Click the 🚀 rocket icon** at the top right
3. **Select "Live Code"**
4. **Wait ~30 seconds** for Python to load (first time only)
5. **Edit any code cell** and click "Run"
6. **Try the exercises** - you'll get instant ✓ or ❌ feedback!

## What Students Will Experience

### Lecture View
- Clean, readable content
- Code examples they can run and modify
- Helpful tips in colored boxes
- Progressive difficulty

### Exercise View
- Clear instructions for each exercise
- Collapsible hints
- Automatic checking with friendly messages:
  - ✓ "Correct! Well done!"
  - ❌ "Expected X but got Y"
- Challenge exercises for advanced learners

## File Structure

```
interactive-course-poc/
│
├── intro.md                  # Landing page (what students see first)
├── _config.yml              # Configuration (theme, features, etc.)
├── _toc.yml                 # Navigation menu
│
├── week01/
│   ├── lecture.ipynb        # Interactive Week 1 lecture
│   └── exercises.ipynb      # 9 auto-graded exercises
│
├── requirements.txt         # Python packages needed
├── README.md               # Full documentation
└── QUICK_START.md          # This file
```

## Next Steps

### To Expand the Course

1. **Create week02 folder**
2. **Copy week01/lecture.ipynb** as a template
3. **Use the Week 2 PDF** to fill in content
4. **Create exercises** following the same pattern
5. **Update _toc.yml** to include Week 2
6. **Push to GitHub** - it will auto-deploy!

### Exercise Creation Pattern

Each exercise follows this template:

```python
# Exercise title and instructions in markdown cell above

# Student writes code here
answer = # Student solution

# Auto-checking code (copy this pattern)
try:
    assert condition_to_check, "❌ Error message"
    print("✓ Correct! Encouraging message!")
except AssertionError as e:
    print(f"{e}")
except Exception as e:
    print(f"❌ Error: {e}")
```

## Comparison: PDF vs Interactive

| What Students Do | PDF Version | Interactive Version |
|------------------|-------------|-------------------|
| Read content | ✅ | ✅ Better formatted |
| See code examples | ✅ | ✅ Can run them! |
| Try exercises | ⚠️ Must install Python | ✅ Browser only |
| Get feedback | ❌ Wait for instructor | ✅ Instant |
| Experiment | ⚠️ Risk breaking things | ✅ Can't break anything |
| Access anywhere | ⚠️ Need PDF + Python | ✅ Just a browser |

## Troubleshooting

### "The site isn't deploying"
- Check Settings → Pages → make sure "GitHub Actions" is selected
- Check the "Actions" tab for build errors
- Make sure the branch is `main` or your current branch

### "Live Code button doesn't appear"
- This is normal in local builds
- The button only appears on the deployed GitHub Pages site
- For local testing, you can run notebooks in Jupyter

### "Python isn't loading in the browser"
- Wait at least 30-60 seconds on first load
- Check browser console for errors (F12)
- Try a different browser (Chrome/Firefox recommended)
- Clear browser cache and try again

## Key Features to Show Students

1. **No Installation** - "Just click and start coding!"
2. **Instant Feedback** - "You'll know immediately if you're right"
3. **Safe to Experiment** - "Try changing the code - you can't break anything"
4. **Progressive Learning** - "Start simple, build complexity"
5. **Hints Available** - "Stuck? Click the hint box"

## Benefits for Instructors

- **Less Setup Support** - No "Python won't install" emails
- **Consistent Environment** - Everyone sees the same thing
- **Track Difficulty** - See which exercises trip people up (via GitHub issues/discussions)
- **Easy Updates** - Fix typos/errors with a simple commit
- **Version Control** - Full history of changes
- **Collaboration** - Other instructors can contribute via PRs

## Technical Notes

- **Pyodide** provides Python in the browser (~50MB download, cached)
- **Thebe** connects Jupyter Book to JupyterLite
- **GitHub Actions** handles building and deployment
- **Zero cost** - GitHub Pages is free for public repos

---

**🎉 You now have a working proof of concept!**

The hardest part is done. Now it's just about converting content from PDFs to notebooks, which can be done incrementally, week by week.
