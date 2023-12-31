\name{querymiRTargetbinding}
\alias{querymiRTargetbinding}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Query miRNA-target interactions by combining expression data
and putative miRNA-target interactions
%%  ~~function to do ... ~~
}
\description{
Query miRNA-target interactions by combining expression data
and putative miRNA-target interactions.
}
\usage{
querymiRTargetbinding(ExpData, miRTarget, type = c("all", "miRNA", "target"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{ExpData}{
An input gene expression data frame, the rows are samples
and the columns are genes.
}
    \item{miRTarget}{
An input miRNA-target interaction data frame, the first
column is miRNA with name "mir" and the second column is target
with name "gene".
}
    \item{type}{
The type of queried miRNA-target interactions, type "all" for 
querying both miRNAs and targets in gene expression data, type "miRNA" 
for querying only miRNAs in gene expression data, and type 
"target" for querying only targets in gene expression data.
}
}

\value{
A list of queried miRNA-target interactions
}

\author{
Junpeng Zhang (\url{https://www.researchgate.net/profile/Junpeng_Zhang3})
}

\examples{
# Obtain expression data file "ExpData.csv" in csv format
ExpDatacsv <- system.file("extdata","ExpData.csv",package="miRspongeR")
ExpData <- read.csv(ExpDatacsv, header=TRUE, sep=",")

# Obtain miRNA-target interaction data file "miR2Target.csv" in csv format
miR2Target <- system.file("extdata", "miR2Target.csv", package="miRspongeR")
miRTarget <- read.csv(miR2Target, header=TRUE, sep=",")
miR2Target_queried <- querymiRTargetbinding(ExpData, miRTarget, type = "all")
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
