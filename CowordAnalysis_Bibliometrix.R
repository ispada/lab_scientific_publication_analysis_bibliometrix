# Co-Word Analysis with Bibliometrix

# Load Packages -----------------------------------------------------------

library(bibliometrix)

# Import data -------------------------------------------------------------

# Assign the file path
file <- "Downloads/scopus_social_robotics.csv" # Update the file path

# Use the fuction convert2df to import the file in a bibliographic dataframe 
# The argument dbsource indicates from which database the collection has been downloaded.

collection_df <- convert2df(file, dbsource = "scopus", format = "csv") # pay attention: a little bit long

#FOR ADDITIONAL INFO ON IMPORTING DATA SEE:
# https://www.bibliometrix.org/vignettes/Data-Importing-and-Converting.html 

# Check result
View(head(collection_df))

# Co-word Analysis --------------------------------------------------------

CS = conceptualStructure(collection_df, field = "DE", method = "MDS", minDegree = 10, clust = 5,
                         stemming = TRUE, labelsize = 8, documents = 10, graph = FALSE)

# Tip: you can check frequency of authors' keywords to define the minDegree

results_biblio = biblioAnalysis(collection_df, sep = ";")

results_biblio$DE %>% as_tibble() %>% view()
# test at the biginning the number of clusters in output leaving clust = "auto", then adjust if needed. 
# here two clusters are given with "auto".

# Visualize plot
CS$graph_terms