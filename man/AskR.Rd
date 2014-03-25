\name{AskR}
\alias{AskR}
\title{Decision Maker}
\usage{
AskR(question = "Will this package be a great success?")
}
\arguments{
  \item{question}{a yes no question about anything really.
  Must be a character, e.g. "Will this package be a great
  success?".}
}
\value{
Returns a character vector of the class AskR
}
\description{
AskR is an interface that helps you make those important
life-decisions using R.
}
\examples{
# pick a color
AskR(question="Will this package be a great success?")
\dontrun{
library(devtools)
install_github("cowsay", "sckott")
library(cowsay)

say(AskR("Will robots be terminated?"))
}
}
\keyword{fortune}
\keyword{question}

