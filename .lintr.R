################################################################################
# File: .lintr.R                                                               #
# Project: msm-nida-ctn                                                        #
# Created Date: 2025-08-28                                                     #
# Author: Matthew Carroll                                                      #
# -----                                                                        #
# Last Modified: 2025-09-05                                                    #
# Modified By: Matthew Carroll                                                 #
# -----                                                                        #
# Copyright (c) 2025 Syndemics Lab at Boston Medical Center                    #
################################################################################

linters <- lintr::linters_with_defaults(
    indentation_linter = NULL,
    return_linter = NULL,
    line_length_linter = NULL
)
