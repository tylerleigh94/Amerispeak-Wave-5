####Libraries####
library(easypackages)
libs<-c("haven", "readr", "tidyverse", "car")
libraries(libs)
####Read in the Data####
dat <- read_sav("Pretest Data.sav")
####Get out frequencies for all items####
for(x in 1:238){
  cat("-----------", "\n")
  print(attributes(dat[,x])$names)
  print(table(dat[,x]))
  cat("\n", "\n")
}
