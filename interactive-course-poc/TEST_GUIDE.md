# Testing Guide - How to Check if It's Working

## Quick Tests (Choose One)

### ⭐ Test 1: Preview on GitHub (Easiest - 30 seconds)

Just visit these URLs in your browser:
- [Week 1 Lecture](https://github.com/sakibanwar/Data-Analytics-and-Modeling-Course-23-24/blob/claude/analyze-repo-structure-ioLtJ/interactive-course-poc/week01/lecture.ipynb)
- [Week 1 Exercises](https://github.com/sakibanwar/Data-Analytics-and-Modeling-Course-23-24/blob/claude/analyze-repo-structure-ioLtJ/interactive-course-poc/week01/exercises.ipynb)

**What you'll see:** Beautifully formatted notebooks (not interactive, just viewing)

---

### 🔬 Test 2: Run Locally in Jupyter (5 minutes)

Run this from the `interactive-course-poc` folder:

```bash
./test-locally.sh
```

Or manually:
```bash
cd week01
jupyter-lab lecture.ipynb
```

This opens Jupyter Lab where you can:
- ✅ Run all code cells
- ✅ Test the exercises
- ✅ Verify auto-checking works
- ✅ Edit and experiment

**What you'll see:** Fully interactive notebooks (like students will experience, but in Jupyter interface)

---

### 🌐 Test 3: Deploy to GitHub Pages (RECOMMENDED - 10 minutes)

This shows the **real student experience** - code runs in browser with no installation!

#### Step 1: Enable GitHub Pages

1. Go to your repository settings:
   ```
   https://github.com/sakibanwar/Data-Analytics-and-Modeling-Course-23-24/settings/pages
   ```

2. Under **"Build and deployment"**:
   - **Source**: Select **"GitHub Actions"** from dropdown
   - Click **Save** (if button appears)

3. You should see a message: "Your site is ready to be published at..."

#### Step 2: Trigger Deployment

The workflow is already configured! To deploy:

**Option A: Automatic (when you push)**
- Already done! The code is pushed to your branch
- Workflow should trigger automatically

**Option B: Manual trigger**
1. Go to Actions tab: https://github.com/sakibanwar/Data-Analytics-and-Modeling-Course-23-24/actions
2. Click **"Deploy Interactive Course to GitHub Pages"** (left sidebar)
3. Click **"Run workflow"** button (top right)
4. Select branch: `claude/analyze-repo-structure-ioLtJ`
5. Click green **"Run workflow"** button

#### Step 3: Wait for Build (2-5 minutes)

Watch the progress:
1. Go to: https://github.com/sakibanwar/Data-Analytics-and-Modeling-Course-23-24/actions
2. You'll see the workflow running with a 🟡 yellow dot
3. Wait for it to turn ✅ green (means deployed!)
4. If it turns ❌ red, click on it to see error logs

#### Step 4: Visit Your Site!

Once deployed (green checkmark), visit:
```
https://sakibanwar.github.io/Data-Analytics-and-Modeling-Course-23-24/
```

**What you'll see:**
- ✅ Beautiful website with your course materials
- ✅ Click 🚀 "Live Code" button to activate interactive mode
- ✅ Run Python code directly in browser (no installation!)
- ✅ **This is exactly what students will experience**

---

## What Works Where?

| Feature | GitHub Preview | Local Jupyter | GitHub Pages |
|---------|----------------|---------------|--------------|
| View content | ✅ Yes | ✅ Yes | ✅ Yes |
| Nice formatting | ✅ Good | ⚠️ Basic | ✅ **Best** |
| Run code | ❌ No | ✅ Yes | ✅ **Yes (in browser!)** |
| Edit code | ❌ No | ✅ Yes | ✅ Yes |
| Auto-checking | ❌ No | ✅ Yes | ✅ Yes |
| Student experience | ❌ | ⚠️ Similar | ✅ **Exact match** |
| "Live Code" button | ❌ | ❌ | ✅ **Yes** |
| Installation needed | ❌ | ⚠️ Yes (Jupyter) | ❌ **None!** |

---

## Recommended Testing Order

1. **First** (30 sec): Preview on GitHub → Verify content looks good
2. **Second** (5 min): Run in Jupyter Lab → Verify exercises work correctly
3. **Third** (10 min): Deploy to GitHub Pages → See final student experience

---

## Verification Checklist (GitHub Pages)

After deploying, test these features:

**Basic Functionality:**
- [ ] Site loads at `https://sakibanwar.github.io/Data-Analytics-and-Modeling-Course-23-24/`
- [ ] Welcome page appears with course information
- [ ] Can navigate to "Week 1: Python Fundamentals"
- [ ] Lecture page displays correctly
- [ ] Exercises page displays correctly

**Interactive Features:**
- [ ] 🚀 Rocket icon appears at top right of page
- [ ] Clicking 🚀 shows "Live Code" option
- [ ] Clicking "Live Code" shows "Waiting for kernel..." message
- [ ] After ~30 seconds, "Run" buttons appear on code cells
- [ ] Clicking "Run" on a code cell executes it
- [ ] Output appears below the code cell
- [ ] Can modify code and run again
- [ ] Exercises show ✓ or ❌ feedback when run
- [ ] Hint boxes expand/collapse when clicked

**If all checked ✅**: Congratulations! It's working perfectly! 🎉

---

## Troubleshooting Common Issues

### "GitHub Pages isn't building"

**Check:**
1. Settings → Pages → Source is set to "GitHub Actions" (not "Deploy from a branch")
2. Actions tab shows the workflow is enabled
3. Your branch has the `.github/workflows/deploy-interactive-course.yml` file

**Fix:**
- Make sure GitHub Pages is enabled for the repository
- Public repos get GitHub Pages for free
- Private repos need GitHub Pro/Team

---

### "Workflow failed with error"

**Check the logs:**
1. Go to Actions tab
2. Click on the failed workflow run (red ❌)
3. Click on the "build" or "deploy" job
4. Read the error message

**Common fixes:**
- If "requirements.txt not found": Make sure all files were committed
- If "permission denied": Check repository settings → Actions → Workflow permissions
- If "Python package error": Update `requirements.txt` with correct versions

---

### "Site deployed but looks broken"

**Try these:**
1. **Hard refresh:** Press Ctrl+Shift+R (Windows/Linux) or Cmd+Shift+R (Mac)
2. **Wait longer:** Sometimes takes up to 5 minutes for DNS
3. **Check deployment:** Actions tab should show green ✅
4. **Clear cache:** Clear browser cache and cookies
5. **Try different browser:** Test in Chrome/Firefox

---

### "Live Code button doesn't appear"

**This is normal if:**
- You're viewing locally (not on GitHub Pages)
- You're viewing the notebook files directly on GitHub
- The Thebe configuration isn't loaded yet

**The Live Code button ONLY appears on the deployed GitHub Pages site.**

For local testing, use Jupyter Lab instead: `./test-locally.sh`

---

### "Live Code loads but Python won't start"

**Common causes:**
1. **First load is slow:** Wait up to 60 seconds (Pyodide is ~50MB)
2. **Browser compatibility:** Use Chrome, Firefox, or Edge (Safari sometimes has issues)
3. **Ad blocker:** Try disabling browser extensions
4. **Check browser console:** Press F12 → Console tab for error messages

---

### "Exercises don't show feedback"

**Check:**
1. Did you click "Run" on the cell?
2. Is Live Code activated? (🚀 button clicked)
3. Is there a Python error? (red text output)

**The auto-checking only works when you run the cell!**

---

## Quick Command Reference

```bash
# View on GitHub (paste in browser)
https://github.com/sakibanwar/Data-Analytics-and-Modeling-Course-23-24/tree/claude/analyze-repo-structure-ioLtJ/interactive-course-poc

# Test locally
cd interactive-course-poc
./test-locally.sh

# Deploy to GitHub Pages (after enabling in Settings)
# Just push to the branch - it auto-deploys!
git push origin claude/analyze-repo-structure-ioLtJ

# View deployed site
https://sakibanwar.github.io/Data-Analytics-and-Modeling-Course-23-24/
```

---

## Still Stuck?

If nothing works:
1. Check that all files were committed: `git status`
2. Check the GitHub Actions logs for errors
3. Verify GitHub Pages is enabled in repository settings
4. Try the local Jupyter test first to isolate the issue

The most reliable test is running `./test-locally.sh` - if that works, the content is good, and it's just a deployment configuration issue.
