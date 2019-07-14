library(dplyr)
library(readxl)
library(ggplot2)
library(fiftystater)
library(mapproj)

oes <- read_excel("../data/state_M2018_dl.xlsx")
occ_desc <- read_excel("../data/Occupation Data.xlsx") 
names(occ_desc) <- c("OCC_CODE", "OCC_TITLE", "OCC_DESC")
occ_desc <- occ_desc[substr(occ_desc$OCC_CODE, 8,10) == ".00", ]
occ_desc$OCC_CODE <- substr(occ_desc$OCC_CODE, 1,7)