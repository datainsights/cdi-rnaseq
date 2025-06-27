# 📘 Domain-Specific R Packages for RNA-Seq Analysis and Transcriptomics

# ────────────────────────────────────────────────────────────────
# ✅ Ensure BiocManager is installed and loaded
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
library(BiocManager)

# ✅ Ensure renv is available for isolated project package management
if (!requireNamespace("renv", quietly = TRUE))
  install.packages("renv")
library(renv)

# ────────────────────────────────────────────────────────────────
# 📦 Base RNA-Seq Domain Packages (core tools and dataset)
base_rnaseq_pkgs <- c("DESeq2", "edgeR", "tximport", "airway")

for (pkg in base_rnaseq_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    renv::install(pkg, repos = BiocManager::repositories())
  }
}

# Optional GitHub-based installs (custom methods or visualization add-ons)
# Example:
# if (!requireNamespace("somePackage", quietly = TRUE)) {
#   renv::install("username/somePackage")
# }

# ────────────────────────────────────────────────────────────────
# 🧬 Extended RNA-Seq Toolkit (infrastructure, QC, annotation, visualization)
extended_rnaseq_pkgs <- c(
  # Differential expression and input
  "limma",

  # Infrastructure
  "SummarizedExperiment", "GenomicRanges", "IRanges", "S4Vectors",
  "Biobase", "BiocGenerics",

  # Quality control and sequencing
  "ShortRead", # FastQC is not an R package but is included for completeness

  # Annotation and enrichment
  "AnnotationDbi", "org.Hs.eg.db", "biomaRt", "clusterProfiler",

  # Visualization and reporting
  "ComplexHeatmap", "EnhancedVolcano", "iSEE"
)

for (pkg in extended_rnaseq_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    BiocManager::install(pkg, ask = FALSE, update = FALSE)
  }
}

message("✅ RNA-Seq domain package setup complete.")