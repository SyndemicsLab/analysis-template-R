# analysis-template-R

A template repository for R analysis projects.

## Structure

Data Folder - Stores all data. Should generally contain data used within the project. Ensure if it is too big that it does not get checked into VC itself but instead a reference to the data is copied.

Notebooks - Where the analysis happens. Should be written in an Rmd format and knit together into a readable format.

Output - The resulting visualizations from the analysis that we want to output from the repository.

R - Where general R functions live. NOTE: No scripts go here, any scripting should be within the notebooks themselves alongside documentation. This is exclusively for R functions!
