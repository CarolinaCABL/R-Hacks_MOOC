#Exploring the folder
list.files(path = '1 R Hacks/Weather/', full.names = T)

from_path <- list.files(path = '1 R Hacks/Weather/2017', full.names = T)
file.copy(from= from_path,
          to='1 R Hacks/Weather/')

#so we can use walk
library(tidyverse)
#But how we can define .x ?

y <- 2017:2020
paste0('1 R Hacks/Weather/',y,'/',y,'.csv')

my_copy_function <- function(x){
    from_path <- paste0('1 R Hacks/Weather/',x,'/',x,'.csv')
    file.copy(from = from_path, to = "1 R Hacks/Weather/")

}

my_copy_function(2017)

walk(.x= 2017:2020, .f= safely(my_copy_function))
