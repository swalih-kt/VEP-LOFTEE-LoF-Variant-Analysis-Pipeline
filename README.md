# VEP + LOFTEE Loss-of-Function Variant Analysis Pipeline

This repository contains a reproducible pipeline for annotating genetic variants using **Ensembl VEP** with the **LOFTEE plugin**, restricting annotations to **MANE Select transcripts**, and extracting **high-confidence loss-of-function (LoF) variants**.

The workflow is suitable for **ASD gene panels, WES, or WGS data**, and is designed to be clinically interpretable and publication-ready.

---

## Overview of the Pipeline

1. Annotate variants using **VEP + LOFTEE**
2. Restrict annotations to **MANE Select transcripts**
3. Extract **high-confidence (HC)** LoF variants
4. Convert annotated VCF to a tabular format
5. Count LoF variants by consequence
6. Repeat analysis for HC variants only

---

## Requirements

- VEP (offline cache installed)
- LOFTEE plugin (GRCh38)
- `bcftools`
- Standard Unix tools (`grep`, `awk`, `egrep`, `sort`, `uniq`)
- Reference genome: **GRCh38**

---

## Step 1: Variant Annotation using VEP + LOFTEE

### Purpose

- Annotate functional consequences
- Use **MANE Select transcripts** for clinical relevance
- Pick a **single best transcript per variant**
- Classify loss-of-function variants using **LOFTEE**

