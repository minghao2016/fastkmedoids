% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{fastclarans}
\alias{fastclarans}
\title{FastCLARANS}
\usage{
fastclarans(rdist, n, k, numlocal = 2L, maxneighbor = 0.025, seed = 123456789L)
}
\arguments{
\item{rdist}{The distance matrix (lower triangular matrix, column wise storage)}

\item{n}{The number of observations}

\item{k}{The number of clusters to produce.}

\item{numlocal}{Number of samples to draw (i.e. restarts).
Default: 2}

\item{maxneighbor}{Sampling rate. If less than 1, it is considered to be a relative value.
Default: 2 * 0.0125, larger sampling rate than CLARANS (see Schubert and Rousseeuw, 2019)}

\item{seed}{Seed for random number generator. Default: 123456789}
}
\value{
KMedoids S4 class
}
\description{
A faster variation of CLARANS, that can explore O(k) as many swaps at a
 similar cost by considering all medoids for each candidate non-medoid. Since
 this means sampling fewer non-medoids, we suggest to increase the subsampling
 rate slightly to get higher quality than CLARANS, at better runtime. 
 (Schubert and Rousseeuw, 2019)
}
\references{
Erich Schubert, Peter J. Rousseeuw 
"Faster k-Medoids Clustering: Improving the PAM, CLARA, and CLARANS Algorithms"
2019 https://arxiv.org/abs/1810.05691
}
