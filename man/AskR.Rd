\name{AskR}
\alias{AskR}
\title{Choose colors interactively from a grid}
\usage{
  AskR(question)
}
\arguments{
question: a yes no question about anything really. Must be a character,
e.g. "Will this package be a great success?".
}

\description{
  AskR is an interface that helps you make those important life-decisions
  using R.
}
\examples{
# pick a color
AskR(question="Will this package be a great success?")
}
