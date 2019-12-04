## Lab 7: SQL and Resilience in Dar Es Salaam 

Access our SQL [here](lab06_final.sql) 

This week, we used data downloaded from Resilience Academy, a Ramania Huria project, to analyze urban resilience in Dar Es Salaam. As one of the most mapped cities in the world, we are taking advantage of the wealth of qualitative and quantitaive, locally-collected and analyzed data to start creating our own models of urban resilience. The method we used to actualize this was through writing SQL, or 'structured query language', which relies on short command lines of code which tell the computer programs how you want your data managed, transformed, and analyzed. From downloading the data that interested us to writing SQL to producing our final interactive maps, below are the step-by-step processes for this lab: 

1. We begun by Downloading data from [Ramania Huria's "Resilience Academy" project](https://resilienceacademy.ac.tz/) for Dar Es Salaam. For our analysis of resilience, we focused on creating a floodplain layer in addition to layers showing the subwards to show the extent of those communities with higher risk of flooding due to their location in the floodplain. We also downloaded a layer showing drain locations, which we simply used as a vizualization tool but could definitely be used in the analysis to further develop the idea of flood risk in the communities. 
  
  Try: think of ways in which storm drain location information could be used to benefit a deeper analysis of flood risk in Dar Es Salaam!

2. Next we needed to create a layer which represented the floodplain, since one did not exist in the Resilience Academy database. We were able to do this by pulling in Open Street Map data (Quick OSM search in QGIS, available as a plugin). For more information about how you can use Open Street Maps in QGIS in really neat ways, check out [this web documentation](https://docs.qgis.org/QGIS-Documentation-2.2/live/html/en/docs/user_manual/osm/openstreetmap.html).

For our project, we performed a Quick OSM search for all OSM tags like "wetland" and added that to our map, making sure to first transform it to the correct Coordinate Reference System (CRS). We then added in identification columns (like ward name) to make a spatial joins with the subward layer possible. This is documented in the first few steps of our SQL code, accessible on this page. 

3. Then it was time to itersect the wetlands layer with the subwards layer in order to determine in which subward the floodplain fell. This part was the trickiest for us to implement using SQL code and it can seem quite confusing, so we recommend using online tutorials and other resources to better understand the SQL functions at work here. 

4. Next we calculated the area of subwards and then the area of the floodplain in each subward using the st_area function in SQL. It's a fairly straightforward function which calculates the area of given geometries, which can then be put in either the subward or floodplain tables. For the later purposes of vizual representation/mapping, I recommend working on the Subwards layer. However, note how it is possible to pull information from other tables to use in SQL queries within another table, which is what we did for the final combination.

5. The very simple next step involved determining the percent of wetland area in each subward; we were interested in vizualizing this as a primary factor of risk in flooding. 

6. Next we added information from the Drain Location layer for vizual analysis: this included scripting in a count of drains in each subward. However, as mentioned earlier, you could really take this component much further to benefit analysis, but that simply was not in the scope for our lab. 



After we created a map of these steps, we also worked with interactive mapping tools this week, like Leaflet. This is a really cool program which allows you to vizually present your analysis and then post it to easily-accesible web pages to make sharing your work that much simpler. Using html code and editing it to display our resilience map how we'd like, we created an interactive web map that anyone can check out. An important note: any vizualizations you've created in QGIS, like color schemes, will not automatically enter in to the html code created by the Leaflet plugin. You will need to edit the given HTML code to add all the information you want into the map. In addition to that, there are numerous other features you can write into the script to create your desired map output. Check out [this web page](https://leafletjs.com/reference-1.5.0.html) for more information. 

Take a look at our final map [here](map3/index.html)



[home](index.md)
