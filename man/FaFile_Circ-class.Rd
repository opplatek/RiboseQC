% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FaFile_Circ.R
\docType{class}
\name{FaFile_Circ-class}
\alias{FaFile_Circ-class}
\alias{FaFile_Circ}
\title{A simple extension to the FaFile class that
allows one to include a list of circular
ranges, e.g. chrM}
\description{
A simple extension to the FaFile class that
allows one to include a list of circular
ranges, e.g. chrM
}
\section{Fields}{

\describe{
\item{\code{circularRanges}}{A character vector describing which seqnames have circular ranges}
}}


\examples{
mytempfile=tempfile()
writeXStringSet(setNames(DNAStringSet(c('AAAAAAAAGG','AAAAAAAAGG')),
  c('chrM','chr2')),filepath=mytempfile)
Rsamtools::indexFa(mytempfile)
cREF<-FaFile_Circ(Rsamtools::FaFile(mytempfile),circularRanges='chrM')
cREF
}
