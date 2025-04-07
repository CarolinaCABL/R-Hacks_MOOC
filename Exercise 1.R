lubridate::date()
lubridate::month(lubridate::today())

library(lubridate)
library(tidyverse)

date()
d <- '2011-12-12'
d2 <- ymd(d)
class(d2)

Sys.sleep(10)
