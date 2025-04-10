install.packages('R.utils')
library(R.utils)

list.files("1 R Hacks/Zip files/")
list.files(path = "1 R Hacks/Zip files/", pattern = 'gz')
myzipfile <- list.files(path = "1 R Hacks/Zip files/", pattern = 'gz', full.names = T)
myzipfile[1]

R.utils::gunzip(myzipfile[1])
R.utils::gunzip(myzipfile[1], remove = FALSE)

for (i in myzipfile){
  print(i)
  gunzip(i, remove=FALSE)
}
