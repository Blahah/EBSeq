\name{QQP}
\alias{QQP}
\title{
The Quantile-Quantile Plot to compare the empirical q's and simulated q's from fitted beta distribution
}
\description{
'QQP' gives the Quantile-Quantile Plot to compare the empirical q's and simulated q's from fitted beta distribution.
}
\usage{
QQP(EBOut, GeneLevel = F)
}
\arguments{
 \item{EBOut}{The output of EBTest or EBMultiTest.
 }
 \item{GeneLevel}{Indicate whether the results are from data at gene level.}
}

\value{
For data with n1 conditions and n2 uncertainty groups, n1*n2 plots will be generated. Each plot represents a subset of the data.
}

\references{
	Ning Leng, John A. Dawson, James A. Thomson, Victor Ruotti, Anna I. Rissman, Bart M.G. Smits, Jill D. Haag, Michael N. Gould, Ron M. Stewart, and Christina Kendziorski. EBSeq: An empirical Bayes hierarchical model for inference in RNA-seq experiments. Bioinformatics (2013)
}

\author{
Ning Leng
}
\seealso{
 EBTest, EBMultiTest, DenNHist
}
\examples{
data(GeneMat)
GeneMat.small = GeneMat[c(500:1000),]
Sizes = MedianNorm(GeneMat.small)
EBOut = EBTest(Data = GeneMat.small,
	Conditions = as.factor(rep(c("C1","C2"), each=5)),
	sizeFactors = Sizes, maxround = 5)
par(mfrow=c(2,2))
QQP(EBOut)

}
\keyword{ Q-Q plot }
