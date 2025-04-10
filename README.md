---

# 📊 Scientific Publications Analysis with Bibliometrix

This repository contains two R scripts that leverage the **Bibliometrix** R package to analyze scientific literature from Scopus. The goal is to extract meaningful insights and perform bibliometric analysis using co-word mapping and metadata-based analytics.

## 📁 Repository Structure

- `MetadataAnalysisBibliometrix.R`: Script for conducting **Descriptive Metadata Analysis**, including author productivity, citation analysis, and keyword trends.
- `CowordAnalysis_Bibliometrix.R`: Script for performing **Co-Word Analysis** on a Scopus dataset using keyword co-occurrence and clustering techniques.
- `scopus_digital_pm.csv` and `scopus_social_robotics.csv`: Example datasets downloaded from **Scopus** and used in the scripts.
  

## 📦 Requirements

Install the following R packages before running the scripts:

```R
install.packages("bibliometrix")
install.packages("bibliometrixData")
install.packages("tidyverse")
install.packages("readr")
```

## 📈 Script 1: Metadata Analysis

The `MetadataAnalysisBibliometrix.R` script extracts and visualizes various bibliometric indicators.

### Key Functions:
- `biblioAnalysis()`: Core function to analyze bibliographic metadata
- `summary()`: Generate descriptive summary tables
- `plot()`: Plot bibliometric indicators (e.g., top authors, sources)
- `authorProdOverTime()`: Visualize author activity over time

### Output:
- Tables of main information (e.g., number of papers, authors, keywords)
- Most productive authors and most cited articles
- Interactive visualizations and time trends

---

## 🧠 Script 2: Co-Word Analysis

The `CowordAnalysis_Bibliometrix.R` script performs a **Conceptual Structure Analysis** based on authors' keywords (`DE` field).

### Key Steps:
- Import the dataset using `convert2df()`
- Perform co-word analysis using `conceptualStructure()`
- Visualize the keyword clusters with multidimensional scaling (MDS)

### Output:
- A visual network of clustered keywords that reveals key research themes in the dataset.

---

## 🗂 Dataset

The dataset `scopus_social_robotics.csv` are a sample export from **Scopus**, containing metadata of publications related to social robotics.
The dataset `scopus_digital_pm.csv` are a sample export from **Scopus**, containing metadata of publications related to Digitalization and Project Management.


### Notes:
- If using your own dataset, make sure to:
  - Export in **CSV** format
  - Specify the source in the `convert2df()` function

---

## 🔍 Useful Links

- 📘 Bibliometrix documentation: [https://www.bibliometrix.org](https://www.bibliometrix.org)
- 📊 How to import and convert datasets: [Importing Guide](https://www.bibliometrix.org/vignettes/Data-Importing-and-Converting.html)

---

## 💬 License & Contributions

This project is open for educational and research purposes. Contributions are welcome! Feel free to fork or submit a pull request if you make improvements or build upon this analysis.

If you use this repository or build upon it, please make sure to cite and acknowledge the authors of the Bibliometrix package:
Aria M, Cuccurullo C (2017). bibliometrix: An R-tool for comprehensive science mapping analysis. Journal of Informetrics. https://doi.org/10.1016/j.joi.2017.08.007
We are grateful to the authors for providing such a powerful tool for bibliometric research.
