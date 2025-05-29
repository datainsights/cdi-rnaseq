# 📘 Domain-Specific R Packages for RNA-Seq Analysis and Transcriptomics

# Ensure BiocManager is available (if needed)
if (!requireNamespace("BiocManager", quietly = TRUE)) install.packages("BiocManager")
library(BiocManager)

# List of core packages for this domain
domain_pkgs <- c("DESeq2", "edgeR", "tximport")

for (pkg in domain_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    renv::install(pkg, repos = BiocManager::repositories())
  }
}

# Optional GitHub-based package for this domain (if applicable)
# if (!requireNamespace("somePackage", quietly = TRUE)) {
#   renv::install("username/somePackage")
# }

message("✅ rnaseq-domain setup complete.")
