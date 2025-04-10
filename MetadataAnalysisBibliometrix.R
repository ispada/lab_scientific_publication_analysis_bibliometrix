# Metadata Analysis as a tool for extracting insights in R

# Load Packages -----------------------------------------------------------

library(bibliometrix)
library(bibliometrixData)
library(tidyverse)
library(readr)

# Import data -------------------------------------------------------------


# Assign the file path
file <- "C:/Users/Irene/Desktop/scopus_digital_pm.csv" # PAY ATTENTION: modify file path as in your device

# Use the fuction convert2df to import the file in a bibliographic dataframe 
# The argument dbsource indicates from which database the collection has been downloaded.

collection_df <- convert2df(file, dbsource = "scopus", format = "csv") # pay attention: a little bit long

#FOR ADDITIONAL INFO ON IMPORTING DATA SEE:
# https://www.bibliometrix.org/vignettes/Data-Importing-and-Converting.html 

# Check result
View(head(collection_df))

# Descriptive Analysis ----------------------------------------------------

# The function biblioAnalysis perform the descriptive analysis of the bibliographic dataframe,
# calculating the main bibliometric measures:

results_biblio = biblioAnalysis(collection_df, sep = ";")

# The function summary summarize the main results of the bibliometric analysis.

# It displays main information about the bibliographic data frame and several tables,
# such as annual scientific production, top manuscripts per number of citations,
# most productive authors, most productive countries, total citation per country, 
# most relevant sources (journals) and most relevant keywords.

# Have a look on the different elements in results_biblio
View(results_biblio$AuthorsFrac) #example

# Note: The parameter k define the size of the chart to include in the summary:
# k=10 means you decide to see the first 10 Authors, the first 10 sources, etc.

summary_results_biblio = summary(results_biblio, k = 10, pause = FALSE, verbose = FALSE)

# Generate tables with the results of summary accessing the different lists.

main_info <- summary_results_biblio$MainInformationDF  # Main information describes the collection size in terms of: number of documents, number of authors, number of sources, number of keywords, timespan, and average number of citations.
most_prod_authors <- summary_results_biblio$MostProdAuthors  # Most productive Authors includes the top 10 of authors publishing in the stream. [Articles Fractionalized is the ratio of the authors production with respect to the size of the set of papers] 
most_cited_papers <- summary_results_biblio$MostCitedPapers  # Most cited papers

# Data Visualization ------------------------------------------------------

# Draw informative plots
plot(x = results_biblio, k = 10, pause = F)

# Draw author statistics over time plot
authors_production <- authorProdOverTime(collection_df, k = 10, graph = TRUE)

# View the graph
authors_production$graph

# If needed, visualize the tables from authorProdOverTime()
authors_production$dfAU %>% as_tibble() %>% view()
authors_production$dfPapersAU %>% as_tibble() %>% view()
