% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fsl_resample.R
\name{fsl_resample}
\alias{fsl_resample}
\title{Title}
\usage{
fsl_resample(
  file,
  voxel_size,
  outfile = NULL,
  retimg = TRUE,
  reorient = FALSE,
  verbose = TRUE
)
}
\arguments{
\item{file}{Input file to resample}

\item{voxel_size}{Voxel size (in mm).  This should be a scalar number.}

\item{outfile}{(character) output filename}

\item{retimg}{(logical) return image of class nifti}

\item{reorient}{(logical) If retimg, should file be reoriented when read in?
Passed to \code{\link{readnii}}.}

\item{verbose}{(logical) print out command before running}
}
\value{
If \code{retimg} then object of class nifti.  Otherwise,
the output file.
}
\description{
Title
}
\examples{
if (have_fsl()) {
file = mni_fname(mm = 1, brain = TRUE)
est2 = fsl_resample(file = file, voxel_size = 1, retimg = FALSE)
pixdim(est2)
est = fsl_resample(file = file, voxel_size = 1)
pixdim(est)
}

}
