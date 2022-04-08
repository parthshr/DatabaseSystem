#install.packages("leaflet")

library("leaflet")

m<-leaflet()

m <- addTiles(m)

## hmm - VB! 
m <- addCircleMarkers(m, lng=-118.2869220517836, lat=34.03245033835621,label="Apartment", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="green")
m <- addCircleMarkers(m, lng=-118.28519451546177, lat=34.02524841035429,label="USC Village Fountain",     radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m <- addCircleMarkers(m, lng=-118.28323882924452, lat=34.02231337273449,label="Generation Fountain",      radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m <- addCircleMarkers(m, lng=-118.28338645977466, lat=34.020456347371265,label="Carolyn Craig Franklin Fountain", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m <- addCircleMarkers(m, lng=-118.285111319317, lat=34.02036360524337,label="Patsy and Forrest Shumway Fountain",     radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m <- addCircleMarkers(m, lng=-118.28399890121054, lat=34.019040709405964,label="Franklin Family Fountain",      radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m <- addCircleMarkers(m, lng=-118.29063035394284, lat=34.02030443131197,label="Bi Ran and Chuck Ng Fountain", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="blue")
m <- addCircleMarkers(m, lng=-118.28315310867488, lat=34.02147888104079,label="Leavey Library",     radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="yellow")
m <- addCircleMarkers(m, lng=-118.28411560993817, lat=34.020327807804414,label="Doheny Jr. Library",      radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="yellow")
m <- addCircleMarkers(m, lng=-118.28420119922986, lat=34.0188396633581,label="Asa V call Law Library", radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="yellow")
m <- addCircleMarkers(m, lng=-118.28646351336684, lat=34.01861553101082,label="Hoose library of Philosophy Library",     radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="yellow")
m <- addCircleMarkers(m, lng=-118.28778166429126, lat=34.019477537359826,label="Helen Topping Architecture Library",      radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="yellow")
m <- addCircleMarkers(m, lng=-118.28893427653901, lat=34.01990278254969,label="Seaver Science Library",      radius=5, fillOpacity=1.0,fill = TRUE, fillColor ="yellow")

m
