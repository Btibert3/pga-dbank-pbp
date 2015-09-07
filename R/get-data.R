## options
options(stringsAsFactors = F)

## load the libraries
library(httr)
library(rvest)
library(stringr)
suppressMessages(library(dplyr))

## the urls
YEARS = c("2014", "2015")
for (YEAR in YEARS) {
  # the URL
  URL = sprintf('http://www.pgatour.com/data/r/505/%s/scorecards/', YEAR)
  # get the data
  tourney = GET(URL)
}

