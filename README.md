# analysis-template-R

A template repository for R analysis projects.

## Structure

This template contains a basic analysis R project folder structure. It assumes we make use of [Quarto notebooks](https://quarto.org/) and the [renv](https://rstudio.github.io/renv/) virtual environment tool. We also make use of our custom linter and format restrictions based on our lab style guide rules.

**Note:** While based on tidyverse, we do not subscribe to all the ideas and provide different checks. Check the [lab style guide](https://github.com/SyndemicsLab/styleguide/blob/main/Rguide.md) for more information.

### Folders

- `data/` - General folder for all data. Ensure if it is [too big](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github#file-size-limits) that it does not get checked into version control itself but instead a reference to the data is copied.
- `data/processed/` - Folder used to store data that is processed by the repository. This is not necessarily output data we want to report but intermediate data that we keep to save compute time.
- `data/raw/` - Folder used to store data that has been untouched by the repository. It is a location for database routing, CSVs, etc. that are pulled from outside sources. Specifically, we do not store any data we have manipulated in this folder.
- `notebooks/` - This folder contains all the Quarto notebooks and is where the analysis happens. Note, these are just `.qmd` files and not rendered results nor partially-rendered files.
- `R/` - Folder used to house all R functions and scripts used across the analysis notebooks. These scripts are not meant to stand alone and should not be run outside of the analysis notebooks. If these are run outside the analysis notebooks, the function should be moved into a package structure or the script should be converted into a notebook.
- `renv/` - A folder created and maintained by `renv`. Do not change by hand.
- `output/` - The folder to store all results from analysis. Specifically, we want to store any generated images or data necessary for a report out. This is also where the rendering should produce the final notebooks.

### Files

- `_quarto.yml` - A yaml file that governs the entire project for quarto rendering. Specifically, this file tells the quarto command how to execute and provides basic formatting/metadata requirements for all notebooks to conform to.
- `.gitignore` - A standard git file to ensure certain elements of the repository are not checked into version control.
- `.lintr` - The linter file used to ensure we are linting for Syndemics specific style guide standards. It is used with the [`lintr` library](https://lintr.r-lib.org/index.html).
- `.Rprofile` - A file created and maintained by `renv`. Do not change by hand. **Note:** This file sources the `utils.R` file for the helper function `ensure_packages`. This is a replacement for the `library()` and `require()` function calls.
- `air.toml` - A TOML file to ensure we are providing the correct formatting to the repository. It works with the [Air formatter](https://posit-dev.github.io/air/).
- `LICENSE.md` - The GNU Affero GPL. This is our lab wide standard open source License.
- `PROJECT_NAME.Rproj` - The default file for RStudio projects. We recommend changing this name after creating your template.
- `README.md` - This file! The basic outline of the project and explanation of the use cases.
- `renv.lock` - A file created and maintained by `renv`. Do not change by hand.

## How to Use

1. Click the green button in the top right of this repository that says "Use this template" and "Create a new repository".
2. Choose your name and settings for the new repository.
3. Clone the new repository and rename the `PROJECT_NAME.Rproj` file.
4. Run `renv::restore()` to get all libraries from `renv` installed.
   1. (Optional) If you want to reset the default `renv` installs run `renv::snapshot()` instead to store your libraries into the `renv`.
5. Update the README to contain details about your project.
6. Develop and enjoy.
