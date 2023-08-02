# Justice in Numbers Pocketbook R Package

The **Justice in Numbers Pocketbook** R package provides a set of functions to build a pocketbook containing various charts, tables, and summary information taken from the Justice in Numbers website. 

## Installation

You can install the package directly from GitHub using the `devtools` package:

```R
# Install devtools if not already installed
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}

# Install the Justice in Numbers Pocketbook package from GitHub
devtools::install_github("moj-analytical-services/jinPocketbook")
```

## Getting Started

To get started, load the package and run the main function `build_pocketbook()`. This function will build the Justice in Numbers Pocketbook, check whether it has changed since the last time it was build and saved, and then save it to the default S3 bucket location 'alpha-jin-pocketbook/Pocketbook'.

```R
# Load the Justice in Numbers Pocketbook package
library(jinPocketbook)

# Build the Justice in Numbers Pocketbook
build_pocketbook()
```

By default, the `build_pocketbook()` function will fetch the latest data from the Justice in Numbers API online. However, you can also specify the root path and file extension for the API files if you want to test the package using locally downloaded JSON files. 

## Package Functions

The **Justice in Numbers Pocketbook** package has only one function available to the user:

`build_pocketbook()`: This is the main function that builds the entire Justice in Numbers Pocketbook and saves it. By default it will download data from the Justice in Numbers API, use it to generate the Pocketbook, then save it to the default S3 bucket location with the filename `JiN_Pocketbook_yyyy_mm_dd.docx`, with the date set on the day the package is run. It will overwrite any existing file with the same name.

You will generally only want to use defaults, but the function does accept the following arguments, which will generally only be used for testing purposes:

 - `rootpath` (Default is "https://data.justice.gov.uk"): This sets the root where the package will look for the API files. You should only change this if you are carrying out testing on the API and want to download the JSON files manually and run the Pocketbook offline.

- `ext` (Default is ""): This is used in conjunction with rootpath when running the package using downloaded offline files. You should change this to "JSON" if you want to run the Pocketbook using downloaded files.

 - `targetpath` (Default is "alpha-jin-pocketbook/Pocketbook"): This is the folder where you want to save the generated Pocketbook DOCX file. It can be a S3 bucket location, or a local folder.
 
 - `S3target` (Default is TRUE): If `targetpath` is a S3 bucket, this should be TRUE. If it is a local folder, it should be FALSE.
 
 - `change_check` (Default is FALSE): This can only be TRUE if S3target is also TRUE. If TRUE, the package will check whether the generated Pocketbook is the same as the most recent Pocketbook in the target S3 bucket. If it is, then it won't be saved. This means that the bucket will only contain files if there has been a change to the underlying data.

## Additional Notes

- The `build_pocketbook()` function may take some time to run, depending on the data retrieval and processing.

- The package is designed to work with the latest data from the Justice in Numbers website. Make sure to have an internet connection when running the `build_pocketbook()` function.

- For advanced users, some internal functions are available in the package. However, it is recommended to only use the main function `build_pocketbook()` for building the complete pocketbook.

- The pocketbook will be saved as a Word document with a filename reflecting the current date.

## License

This package is distributed under the MIT License. See the `LICENSE` file for more details.

## Acknowledgments

The **Justice in Numbers Pocketbook** package was developed by [Phil Hall](https://github.com/phil-hall-moj) and is part of a larger project related to the Justice in Numbers websitet.

If you have any questions, suggestions, or issues related to the package, please feel free to [open an issue](https://github.com/moj-analytical-services/jinPocketbook/issues) on GitHub.

