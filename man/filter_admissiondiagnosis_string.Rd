% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter_admission_diagnoses.R
\name{filter_admissiondiagnosis_string}
\alias{filter_admissiondiagnosis_df}
\alias{filter_admissiondiagnosis_df_for_sepsis}
\alias{filter_admissiondiagnosis_string}
\alias{filter_admissiondiagnosis_string_for_sepsis}
\title{Filter a patient based on their admission diagnosis.}
\usage{
filter_admissiondiagnosis_string(temp_str, inclusion, exclusion = NULL)

filter_admissiondiagnosis_df(temp_df, diagnosis_column, inclusion,
  exclusion = NULL)

filter_admissiondiagnosis_string_for_sepsis(temp_str)

filter_admissiondiagnosis_df_for_sepsis(temp_df, diagnosis_column)
}
\arguments{
\item{temp_str}{A string containing the individual's admission diagnosis}

\item{inclusion}{A character vector containing the desired inclusion criteria}

\item{exclusion}{A character vector containing the desired exclusion criteria}

\item{temp_df}{A data.frame containing admission diagnoses}

\item{diagnosis_column}{A character string of the name of the diagnosis field}
}
\value{
A vector of logical values describing membership to inclusion/exclusion
}
\description{
The input must be a single string. The string will be pushed to lowercase
and split on any kind of punctuation to yield multiple substrings.
Each substring will be compared against a list of inclusion and exclusion
critera.
The returned values are logical with TRUE and FALSE representing membership
in the inclusion and exclusion critera respectively and NA, neither.
All substrings are returned for transparency but care should be taken when
filtering so that individuals satisfying both inclusion and exclusion are
not mistakingly included.
}
\section{Functions}{
\itemize{
\item \code{filter_admissiondiagnosis_df}: Apply to data.frame of admission diagnoses

\item \code{filter_admissiondiagnosis_string_for_sepsis}: Apply to data.frame of admission diagnoses using predefined criteria

\item \code{filter_admissiondiagnosis_df_for_sepsis}: Apply to data.frame of admission diagnoses using predefined criteria
}}
\examples{
# some fundamental types
inclusion = c('PNEUMONIA','PNA','SEPSIS','FEVER','ALTERED MENTAL STATUS')
exclusion = c('CHF','CONGESTIVE HEART FAILURE','INTRACRANIAL HEMORRHAGE','SUBARACHNOID HEMORRHAGE')
temp_str = c('CHF - FEVER / test')
temp_df = data.frame(HADM_ID = c('1', '2', '3', '4'),
   diagnosis = c('CHF - FEVER / test', 'pneumonia',
       'hemorrhage', 'intracranial hemorrhage'))
# call the functions
filter_admissiondiagnosis_string(temp_str, inclusion, exclusion)
# mapping
sapply(temp_df$diagnosis, function(x) filter_admissiondiagnosis_string(x, inclusion, exclusion))
# direct
# filter_admissiondiagnosis_df(temp_df, 'diagnosis', inclusion, exclusion)

}

