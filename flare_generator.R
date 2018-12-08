# Download JSON data
library(d3Network)
library(RCurl)
URL <- "https://cdn.jsdelivr.net/gh/sayandev/Network-Data-Visualization/Data_JSON_format/flare_game_of_thrones.json"
Data_Flare <- getURL(URL, ssl.verifypeer = FALSE)


# Convert to list format
List_Flare <- rjson::fromJSON(Data_Flare)

# Create Graph
d3Tree(List = List_Flare, fontsize = 8, diameter = 800)