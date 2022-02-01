#----------------------------------------------------------------------
# Map of interaction patterns.
#----------------------------------------------------------------------
# Data
# Lat and Long Horto: -22.413350° -47.524164°
palmmap <- read.table("/Users/pedro/Dropbox/Cursos/Curso Frugivoria/Curso_2012/Focal_Cecropia/map.txt", header=T, sep=",", dec=".", na.strings="NA")

# MAPS ----------------------------------------------------------------
# Plotting the locations of a population ------------------------------
# plot(gsdata, stratum="Population", 
#              Longitude="Longitude", Latitude="Latitude", 
#              map.source="google", map.type="terrain", 
#              color="black", zoom=8)

# Using ggplot2
require(ggmap)
location <- c(-47.523861, -22.413608)
# location <- c(mean(palmmap$lon), mean(palmmap$lat))

location
map <- get_map(location, maptype = "satellite", zoom = 18)
p <- ggmap(map)
p + geom_point(aes(x = lon, y = lat), data= palmmap,
               color = "white", size = 4, alpha = 1) +
    geom_point(aes(x = lon, y = lat, 
                   colour = factor(palmmap$palm)), data= palmmap,  
               #      shape = as.factor(gsdata$Population), 
               size = 2.5, alpha = 1) +
    xlab("Longitude") + ylab("Latitude")

# Bubble plots according to visitation data
# Bubble plots
p <- ggmap(map)
#p + xlab("Longitude") + ylab("Latitude")
p + geom_point(aes(x = lon, y = lat), 
               data= palmmap,
               color = "white", 
               size = palmmap$palm, 
               alpha = 1) +
    geom_point(aes(x = lon, y = lat, 
               colour = factor(palmmap$palm)), 
               data= palmmap,  
               size = palmmap$palm*0.7, 
               alpha = 0.6) +
    xlab("Longitude") + ylab("Latitude")

## Retrieve a map for a set of populations
po <- data.frame(cbind(gsdata$Longitude, gsdata$Latitude, gsdata$Population))
colnames(po)<- c("Longitude", "Latitude", "Population")
po
p<-population_map(coords, map.source="google", map.type="terrain", zoom=8)
ggmap(p)
