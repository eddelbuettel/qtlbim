\name{plot.qb.scantwo}
\alias{plot.qb.scantwo}
\title{Two dimensional LOD Plot of Epistasis/joint}
\description{
Plots joint LOD for chromosomes on a two dimensional grid.
}
\usage{
\method{plot}{qb.scantwo}(x, chr, smooth = 3, main, offset,
  nodiag, slice = NULL, show.locus = TRUE,
  weight = c("sqrt","count","none","atten","ratten"), verbose = FALSE,
  split.chr, \dots)
}

\arguments{
  \item{x}{An object of class \code{qb.scantwo}.}
  \item{chr}{Vector of chromosomes to plot. Must be integer.}
  \item{smooth}{Perform smoothing if > 0 using weighted average over
    \code{smooth} adjacent points.}
  \item{main}{Main title.}
  \item{offset}{Offset to make all values non-negative (see below).}
  \item{nodiag}{If \code{TRUE} do not include diagonal in plot.}
  \item{slice}{Take 1-D slice through 2-D surface is not \code{NULL}
    (see below).}
  \item{show.locus}{If a \code{slice}, show locus estimate if \code{TRUE}.}
  \item{weight}{Weights to use for nearest neighbor
    smoothing. \code{sqrt} is square root of count per locus. Used only
    if \code{smooth} > 0.}
  \item{verbose}{Give verbose feedback if \code{TRUE}.}
  \item{split.chr}{Split summary by multiple QTL per chromosome (see
    details for \code{\link{plot.qb.scanone}}).}
  \item{\dots}{Other parameters passed to generic plot function.}
}

\value{
The scantwo object being plotted.
}
\details{
The \code{offset} is used only if \code{\link{qb.scantwo}} used
\code{type} = "estimate" to make values for plotting all
non-negative. Values are rescaled by \code{offset} so that the origin is
at 1 and, by default, the min and max are at 0 and 2, respectively, for
each half of the plot. We need this at this time because
\code{\link[qtl]{plot.scantwo}} does not allow negative values.

The \code{\link[qtl]{plot.scantwo}} argument \code{nodiag}
is set to ensure values are all shown and not modified by
\code{\link[qtl]{plot.scantwo}}. Plots with different values for
\code{nodiag} or \code{lower} than the defauls may be non-sensical. For
instance, passing \code{lower = "cond-int"} produces much white area
on the image.

A non-null \code{slice} yields a 1-D view of the 2-D surface. The plots
for slices use \code{\link[qtl]{plot.scantwo}}. The elements of the slice
vector are:
\code{chr} = Chromosome number to slice on;
\code{upper} = Focus on upper triangle of 2-D if \code{TRUE};
\code{start} = Start position in chromosome \code{chr} (default = 0);
\code{end} = End position in chromosome \code{chr} (default = end of
  chromosome);
\code{weight} = Type of weighted mean across \code{chr} by number of MCMC
  samples: 0 = unweigthed; 1 = uniform weighting; 2 = position-specific
  weighting (default).
}

\references{ \url{http://www.qtlbim.org} }
\author{ Brian S. Yandell, yandell@stat.wisc.edu }
\seealso{\code{\link{qb.scantwo}}, \code{\link[qtl]{plot.scantwo}}}
\examples{
example(qb.scantwo)
}
\keyword{models}
\keyword{hplot}
