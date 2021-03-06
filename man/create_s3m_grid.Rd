% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_grid_s3m.R
\name{create_s3m_grid}
\alias{create_s3m_grid}
\title{Create the rectangular S3M grid given a value of d of the farthest distance of
a village from a sampling point.}
\source{
based on S3M sampling approach designed by Mark Myatt and
    Ernest Guevarra
}
\usage{
create_s3m_grid(input, d, buffer, country, output = "points")
}
\arguments{
\item{input}{A class SpatialPolygons or SpatialPolygonsDataFrame object of the
area to be gridded.}

\item{d}{A numeric value for length (in kilometres) of the maximum distance
of a village/community from a sampling point. This can be the output of
the function \code{calculate_d()}}

\item{buffer}{A numeric value for distance (in kilometres) to expand the
borders of the given spatial object \code{x}. Negative values allowed.}

\item{country}{Name of country where sampling area is located. This is used
to determine the appropriate UTM projection to transform \code{input}}

\item{output}{A character value specifying type of output required. Can be
either of two options: "points" for a class SpatialPoints output of the
sampling point locations based on the S3M grid or "lines" for a class
SpatialLines output of the rectangular S3M grid. Default is "points".}
}
\value{
Either a class SpatialLines object if \code{output} is "lines" or
    a class SpatialPoints object if \code{output} is "points"
}
\description{
Create the rectangular S3M grid given a value of d of the farthest distance of
a village from a sampling point.
}
\examples{

# S3M grid of Sennar state, Sudan based on a d of 12 kms
create_s3m_grid(input = sudan01[sudan01$STATE == "Sennar", ],
                d = 12,
                buffer = 6,
                country = "Sudan",
                output = "lines")

}
