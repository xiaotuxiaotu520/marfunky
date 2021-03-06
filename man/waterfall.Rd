% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/waterfallPlot.R
\name{waterfall}
\alias{waterfall}
\title{Makes a waterfall plot}
\usage{
waterfall(df, offset = 0.3)
}
\arguments{
\item{df}{a dataframe with columns 'category' (an ordered factor),
'value' (numeric), and 'sector' (character)}

\item{offset}{the spacing between the columns, default = 0.3}
}
\value{
a ggplot2 object
}
\description{
Makes a waterfall plot using ggplot2.  The bars will be plotted in
the order specified by the factoring of the 'category' column.
Values should represent the positive or negative changes relative
to the previous bar.
}
\examples{
raw <- data.frame(category=c("A", "B", "C", "D"),
                   value=c(100, -20, 10, 90),
                   sector=1)

 df1 <- transform(raw, category=factor(category))
 waterfall(df1) + theme_bw() + labs(x="", y="Value")

 df2 <- transform(raw, category=factor(category, levels=c("A", "C", "B", "D")))
 waterfall(df2) + theme_bw() + labs(x="", y="Value")
}
\author{
James Keirstead
}

