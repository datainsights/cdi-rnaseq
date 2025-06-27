# 🧬 CDI: RNA-Seq Data Analysis

[![Live Site](https://img.shields.io/badge/visit-site-blue?logo=githubpages)](https://datainsights.github.io/cdi-rnaseq)

📘 **Live guide:** [https://datainsights.github.io/cdi-rnaseq](https://datainsights.github.io/cdi-rnaseq)

Modular, reproducible framework for analyzing RNA-Seq datasets using  
**Bookdown**, **renv**, and **GitHub Actions** — deployed via GitHub Pages.

---

![Test Book Build](https://github.com/datainsights/cdi-rnaseq/actions/workflows/test-book.yml/badge.svg)
![Deploy Book](https://github.com/datainsights/cdi-rnaseq/actions/workflows/deploy-book.yml/badge.svg)

> Manual test + auto-deploy CI split for clean and controlled builds.

---

## 📘 Overview

This domain guides users through RNA-Seq data preprocessing, normalization, and downstream analysis using structured analytical layers.

Layered structure:

- 🔍 **Exploratory Data Analysis (EDA)** layer
- 📊 **Visualization (VIZ)** layer *(coming soon)*
- 📐 **Statistical Analysis (STATS)** layer *(coming soon)*
- 🧠 **Machine Learning (ML)** layer *(coming soon)*

---

## 🛠️ Environment Setup

This project supports both **R** and **Python** workflows.

### 🔄 Option 1: Restore R dependencies directly

```bash
Rscript -e 'renv::restore()'
```

### ⚙️ Option 2: Run the full environment setup (recommended)

```bash
# Make setup scripts executable
chmod +x scripts/setup_r_env.sh
chmod +x scripts/setup_py_env.sh

# Run R and Python environment setup
./scripts/setup_r_env.sh
./scripts/setup_py_env.sh
```

### 📦 Notes

- **R packages** are managed with `renv` and modular installer scripts in `scripts/`.
- **Python packages** are listed in `requirements.txt` and installed using a virtual environment (`venv/`) created with Python’s built-in `venv` module.
- Customize:
  - `scripts/common.R` and `scripts/rnaseq.R` (for R)
  - `requirements.txt` (for Python)

---

## 📁 Data Sources

Typical datasets include:
- Gene count matrices
- Sample metadata
- Annotation files (e.g., GTF, FASTA)

Place all input files inside the `data/` folder.

---

> 🧠 You’ve learned the framework for free — now apply it to solve real-world, domain-specific problems.

## 🤝 Contributors

Maintained by the CDI Team at [ComplexDataInsights.com](https://complexdatainsights.com).  
We welcome improvements, feedback, and collaboration!

📬 See the [CDI Contribution Guide](https://github.com/datainsights/cdi-framework/blob/main/CONTRIBUTING.md) for how to get involved.

## 📄 License

This project is released under the [MIT License](LICENSE).  
Attribution is appreciated in derivative works or training use.
