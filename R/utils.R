################################################################################
## File: utils.R                                                              ##
## Project: analysis-template-R                                               ##
## Created: 2025-11-05                                                        ##
## Author: Dimitri Baptiste                                                   ##
## -----                                                                      ##
## Last Modified: 2025-11-05                                                  ##
## Modified By: Dimitri Baptiste                                              ##
## -----                                                                      ##
## Copyright (c) 2025 Syndemics Lab at Boston Medical Center                  ##
################################################################################

#' Ensure required packages are installed
#'
#' @description
#' A method that installs packages from CRAN, if they're not yet installed in
#' the current environment, and loads packages.
#'
#' @param packages Character vector of required packages
#' @return A logical vector giving `TRUE` if the package is installed and
#' available and `FALSE` if there was an issue with installing each of the
#' specified packages
#' @examples
#' ensure_packages(c("dplyr", "here"))
ensure_packages <- function(packages) {
    sapply(packages, function(package) {
        if (!(package %in% rownames(installed.packages()))) {
            install.packages(package, repos = "http://cran.us.r-project.org")
        }
        library(package, character.only = TRUE, warn.conflicts = FALSE)
        return(require(package, character.only = TRUE))
    })
}
