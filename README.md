# prepr
### Pre-pivoting root based test statistic for comparing mean vectors of two populations in high dimensional data sets.

**Description** 

Testing equality of mean vectors is a very commonly used criterion when comparing two  multivariate  random  variables.   Traditional  tests  such  as  Hotelling’s $T^2$ become either unusable or output small power when the number of variables is greater than the  combined  sample  size.   This package implements a new test procedure developed using pre-pivoting and Edgeworth expansion for testing the equality of two population mean vectors in the “large p,small n" setting.  An illustration of the test procedure is provided and the method is applied to analyze the colorectal cancer gene expression data set from Alon et al. (1999).

### Installation

To install the package, run the following commands:

```library(devtools)```

```install_github("dnayyala/prepr")```

### References

1. TBA
2. Broad patterns of gene expression revealed by clustering analysis of tumor and normal colon tissues probed by oligonucleotide arrays; Alon et al.; PNAS 1999 (12), pp. 9745-9750. 
