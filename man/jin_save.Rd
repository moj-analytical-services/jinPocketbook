% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/JiN_save.R
\name{jin_save}
\alias{jin_save}
\title{Save the Justice in Numbers Summary Tables}
\usage{
jin_save(doc, targetpath, S3target, doc_type)
}
\arguments{
\item{doc}{A Word document object created by the officer::read_docx() function}

\item{targetpath}{Path to the directory where the summary tables should be saved}

\item{S3target}{Logical indicating whether to save to an S3 bucket (default is TRUE)}

\item{doc_type}{Whether the file is a pocketbook or summary tables}
}
\description{
This function saves the Justice in Numbers Summary Tables either to an S3 bucket or locally based on the specified settings.
}
