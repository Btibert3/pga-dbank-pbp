## options
options(stringsAsFactors = F)

## load the libraries
library(httr)
library(rvest)
library(XML)
library(stringr)
suppressMessages(library(dplyr))

## the urls
YEARS = c("2014", "2015")
tourney_data = data.frame()
for (YEAR in YEARS) {
  # the URL
  URL = sprintf('http://www.pgatour.com/data/r/505/%s/scorecards/', YEAR)
  # get the data
  tourney = htmlParse(URL)
  # get the links
  links = page %>% html_nodes("a") %>% html_text()
  links = links[str_detect(links, pattern=".json$")]
  # make a data frame 
  tourney_players = data.frame(players = links, year = YEAR)
  # append
  tourney_data = bind_rows(tourney_data, tourney_players)
  rm(tourney_players, links, tourney, URL, YEAR)
}

## for each row, grab the data
for (ROW in 1:nrows(tourney_data)) {
  # slice the row
  x = tourney_data[x, ]
  # get the data 
  URL = sprintf('http://www.pgatour.com/data/r/505/%s/scorecards/%s', x$year, x$players)
  scorecard = GET(URL, as="text")
  ## what if the page doesnt exist?
}
