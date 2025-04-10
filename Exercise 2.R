library(R.utils)
library(tidyverse)

list.files('1 R Hacks/Zip files/Excersise Data/',full.names = T)
myzipfile2 <- list.files('1 R Hacks/Zip files/Excersise Data/',full.names = T)

for (i in myzipfile2){
    gunzip(i, remove = F)
}


file.remove("1 R Hacks/Zip files/Excersise Data/2013.csv")

rm_files <- list.files("1 R Hacks/Zip files/Excersise Data/", pattern='csv$', full.names =T)
walk(.x=rm_files, .f=file.remove)

uz_again <- list.files("1 R Hacks/Zip files/Excersise Data/", pattern = 'gz', full.names=T)
walk(.x=uz_again, .f=gunzip, remove=F)
