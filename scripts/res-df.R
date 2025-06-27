library(tidyverse)
library(DESeq2)

# 🔄 Set seed for reproducibility
set.seed(42)

# 🔹 Load data
counts <- read_csv("data/demo_counts.csv") %>%
  column_to_rownames("gene")
metadata <- read_csv("data/demo_metadata.csv")

# 🧬 Create DESeq2 object
dds <- DESeqDataSetFromMatrix(countData = counts,
                              colData = metadata,
                              design = ~ condition)

# ⚙️ Run DE analysis
dds <- DESeq(dds)

# 📋 Extract results
res <- results(dds)

# 🧼 Clean results
res_df <- as.data.frame(res) %>%
  rownames_to_column("gene") %>%
  arrange(padj)

# 💾 Save for downstream visualization
write_csv(res_df, "data/deseq2_results.csv")

# 👁️ Preview top results
head(res_df, 5)