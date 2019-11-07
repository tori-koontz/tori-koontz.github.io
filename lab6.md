## Lab 7: SQL and Resilience in Dar Es Salaam 

Access our SQL [here](lab06_final.sql) 

This week, we used data downloaded from Resilience Academy to analyze urban resilience in Dar Es Salaam. Using SQL, we did the following: 

1. Downloaded data from Ramania Huria's "Resilience Academy" project: https://resilienceacademy.ac.tz/ for Dar Es Salaam

2. Created a wetland layer pulling in Open Street Map data (Quick OSM search in QGIS) and then added in identification columns (like ward name) to make a spatial joins possible

3. Intersected wetlands layer with subwards layer in order to determine which subward the floodplain fell into

4. Calculated area of subward and then area of floodplain in subward using the st_area function in SQL

5. Determined percent of wetland area for each subward

6. Added information from a Drain Location layer for vizual analysis: this included scripting in a count of drains in each subward. 



After we created a map of these steps, we also worked with interactive mapping tools this week, like Leaflet. Using html code and editing it to display our resilience map how we'd like, we created an interactive web map that anyone can check out. 

Take a look [here](dsmmap/index.html)



[home](index.md)
