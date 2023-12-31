% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bmi.R
\name{bmi}
\alias{bmi}
\title{Calculate Body Mass Index}
\usage{
bmi(height, weight)
}
\arguments{
\item{height}{Height in meters.}

\item{weight}{Weight in kilograms.}
}
\value{
Body mass index in kg per square meter.
}
\description{
Calculate \href{https://www.who.int/europe/news-room/fact-sheets/item/a-healthy-lifestyle---who-recommendations}{body mass index according to the World Health Organization}
from height and weight.
}
\examples{
bmi(1.81, 90.5)
}
