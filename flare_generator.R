# Download JSON data
library(d3Network)
library(RCurl)
URL <- "https://rawgit.com/sayandev/Network-Data-Visualization/master/Data_JSON_format/flare_game_of_thrones.json"
Data_Flare <- getURL(URL, ssl.verifypeer = FALSE)


# Convert to list format
List_Flare <- rjson::fromJSON(Data_Flare)

# Create Graph
d3Tree(List = List_Flare, fontsize = 8, diameter = 800)