% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/build_pocketbook.R
\name{build_pocketbook}
\alias{build_pocketbook}
\title{Build the Justice in Numbers Pocketbook}
\usage{
build_pocketbook(
  rootpath = "https://data.justice.gov.uk",
  ext = "",
  targetpath = "alpha-jin-pocketbook/Pocketbook",
  S3target = TRUE,
  change_check = FALSE
)
}
\arguments{
\item{rootpath}{The root URL path for the API data (default is "https://data.justice.gov.uk").}

\item{ext}{Additional extension to be appended to the target file name (default is an empty string).}

\item{targetpath}{The target path for saving the generated pocketbook (default is "alpha-jin-pocketbook/Pocketbook").}

\item{S3target}{Logical. If TRUE, the generated pocketbook will be saved to S3 (default is TRUE).}

\item{change_check}{Logical. If TRUE, the function will check whether the generated pocketbook has changed compared to the latest version on S3 and update accordingly (default is FALSE).}
}
\description{
This function builds the Justice in Numbers Pocketbook.
It takes several parameters to customize the pocketbook generation process.
}
\examples{
# Generate the pocketbook and save it to the default location in S3 without checking for changes
build_pocketbook()

# Generate the pocketbook but only save it to the default location in S3 if it has changed since it was last run
build_pocketbook(change_check = TRUE)

# Generate the pocketbook and save it to a folder in the working directory called 'outputs'
build_pocketbook(targetpath = "outputs", S3target = FALSE)
}
