% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_past_medical_history.R
\name{extract_pmh_string}
\alias{extract_pmh_string}
\title{Extract the past medical history substring of a discharge note.}
\usage{
extract_pmh_string(temp_str)
}
\arguments{
\item{temp_str}{A string containing the individual's discharge summary note}
}
\value{
A substring containing the pmh component of the note
}
\description{
The input can either be a single string or a data.frame in which case the
generic is mapped through each row. The string will be pushed to lowercase.
The string will be searched for past medical history, or history of present
illness. Each substring will be compared against a list of exclusion
critera which if present will be marked as TRUE.
}
\examples{
# create an example
temp_str = "blah past medical history: smoking related emphysema. blah: test"
extract_pmh_string(temp_str)

}

