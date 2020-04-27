# gyokaikyor
<!-- badges: start -->
[![Build Status](https://travis-ci.com/JK-junkin/gyokaikyor.svg?branch=master)](https://travis-ci.com/JK-junkin/gyokaikyor)
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

After data loading successfully finished, you should run below code and create PDF or HTML document.
```r
gyokaikyor::create_document(species = "maaji", filetype = "pdf")
```
This example code shows to make PDF document about 'maaji' (Trachurus japonicus).
