% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotAcousticScene.R
\name{plotAcousticScene}
\alias{plotAcousticScene}
\title{Plot Acoustic Scene}
\usage{
plotAcousticScene(
  x,
  freqMap,
  typeCol = "species",
  title = NULL,
  bin = "1day",
  scale = c("log", "linear"),
  freqMin = NULL
)
}
\arguments{
\item{x}{dataframe of detections, must have column \code{UTC} and
a column to connect detection types to the frequency type map}

\item{freqMap}{a dataframe listing frequency ranges to use for
various detection types in \code{x}. Must have columns \code{type},
\code{freqMin} (Hz), \code{freqMax} (Hz), and optionally \code{color}
(color to use for this type of detection on plot)}

\item{typeCol}{column name in \code{x} that matches names in \code{type}
column in \code{freqMap}}

\item{title}{optional title to use for the plot}

\item{bin}{time bin to use for plotting time axis. Each detection will
be displayed as covering this amount of time}

\item{scale}{one of \code{log} or \code{linear}, the frequency scale for
the plot}

\item{freqMin}{optional minimum frequency for plot, useful for log scale}
}
\value{
a ggplot object
}
\description{
Plots a representation of the acoustic scene using
detections in data. Frequency ranges for detections are taken
from user input and displayed as different colored bars
}
\author{
Taiki Sakai \email{taiki.sakai@noaa.gov}
}
