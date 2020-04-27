# gyokaikyor
<!-- badges: start -->
[![Codecov test coverage](https://codecov.io/gh/JK-junkin/gyokaikyor/branch/master/graph/badge.svg)](https://codecov.io/gh/JK-junkin/gyokaikyor?branch=master)
<!-- badges: end -->

**`gyokaikyor`** allows you easier document-building for gyokaikyo works.


# Installation
```r
install.packages("devtools")

# Install gyokaikyor from GitHub
devtools::install_github("JK-junkin/gyokaikyor")
```

# Usage
```r
# load and attach package
library(gyokaikyor)

# read database file (!! Able to read Excel file only for now !!)
data <- gyokaikyor::read_db(path = "path/to/your/data-file.xlsx")

# alternatively, you can use stockdbr package for input data
data <- stockdbr::load_catch()
```