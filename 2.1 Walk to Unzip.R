library(R.utils)
library(tidyverse)

myzipfile <- list.files(path = "1 R Hacks/Zip files/", pattern = 'gz', full.names = T)

walk(.x = myzipfile, .f= gunzip, remove = F)
walk(.x = myzipfile, .f= safely(gunzip), remove = F)
#safely allows us to skip one iteration that doesn't works
#for exemple if one of the zip file is already unzipped