
## Resilience and Reproducibility: Malawi as a case study 

Over the course of two weeks, our class discussed critical ideas of reproducibility and replicability in GIS/data science work. In order to contribute to a fully open source data science world, new published work should strive to accomplish these two goals, so that their research may be redone or reanalyzed by interested parties. We tested this idea of reproducibility through Malcomb et. al's work, ["Vulnerability modeling for sub-Saharan Africa: An operationalized approach in Malawi"](https://www.sciencedirect.com/science/article/pii/S0143622814000058?via%3Dihub). Our goal in this lab was to use Malcomb's methodology in order to recreate his map of vulnerability. 

Malcolm's methods for measuring household resilience: 

![image1](MalcombWeights.png)

And his final map:

![map](MalcombMap.png)

### Methods 

Data sources: 
1. DHS Survey
2. DHS Cluster points
3. GADM Malawi boundaries/traditional authorities
4. UNEP Global Risk Platform data for flood risk and drought exposure 
5. FEWSnet Livelihood Zones

Platforms and tools: 
QGIS 3.8.1 
GDAL (as plugins)
GRASS (as plugins)

Before I go into the methods, it is important to note that our methodology is only able to account for 80% of Malcomb's final map, as he uses FEWSnet data that is not open and accessible for public use. This is the most glaring problem with reproducibility, and others will be referenced later. 

The first part of creating the final end result is to calculate the "Adaptive Capacity", which uses DHS Survey data and creates a way to weight each factor according to importance. First, we used DHS metadata to isolate all the variables represented in Malcom's methodology. We found them all, but ran into another problem of reproducibility in the fact that many of the "Access" factors, like owning a radio, were measured with either a 0 or 1, for yes/no. Malcomb was not clear in his work how he tranformed these 0/1 values into a quantile scale to fit in with the rest of the data. 

As a class, we worked to draft an [SQL code](https://github.com/GIS4DEV/GIS4DEV.github.io/tree/master/mwi) for rescaling each variable and ranking it as a quantile. In addition to ranking, the code includes steps for deleting missing data and other joins.

The next part to Malcomb's final calculation is including UNEP Global Risk data on exposure, via flood and drought data. When we downloaded the raster files from UNEP's website, they did not match up and had to be rescaled to fit the 1-5 quantile ranking. I accomplished that by using GDAL's Warp tool, and then by using GRASS functions like r.Quantile and r.Recode. The layers also need to be clipped to include only relevant data, which can be done using the GDAL Clip by Extent.

Next, we needed to convert the layer with adaptive capacity (henceforth called "capacity") to a raster, which can be accomplished using GDAL's Rasterize tool. Once all three layers (capacity, flood, and drought) were in the same format (CRS, cell size, quantile rank), we can run Professor Holler's Vulverability model, which incorporates our SQL code and produces three layers, identical in dimension/classification, for capacity, flood, and drought. 

This is my map which shows the adaptive capacity rank for each Traditional Authority:

![map2](malawi_scores.png)

Next, we used Raster calculator to combine the three raster layers, according to the weighting done in the Malcomb methodology. He lists his final calculation as Assets + Access + Livelihood - Exposure. However, we needed to remember that the various quantile ranks don't exactly correlate: A high score for Assets/Access means lower vulnerability, whereas a high ranking for the flood and drought layers correlates to higher vulnerability. As such, our calculation for combining the layers was (2-(Capacity * 0.4) + (Drought * 0.2) + (Flood * 0.2)). This output gave me my final map of vulnerability: 

![finalmap](totalvulnerability.png)

### Discussion

Just how similar are the two maps to Malcomb's published results? My final map output closely resembles Malcomb's in terms of classification, but with some key distinctions. The most striking departure is in the northern region of Malawi, where Malcomb's map reports generally low vulnerbaility across large swaths of the country. However, our map paints a very different picture of vulnerability and risk analysis, with overall higher reported scores and much more variation not only within the north, but also throughout the whole map. Much of this is most likely due to the fact that our map could only ever be 80% of Malcomb's, as we did not have access to all his data. That, combined with a vague methodology created challenges for us as we attempted to recreate his work. 

It is hard to assess the level of rigor to which Malcomb adhered to in his methodology, and how critically he examined his metric for vulnerability analysis. I will say that as a model, his workflow makes a lot of comprehensive sense, and seeks to include many variables in an attempt to accurately capture the true level of vulnerability throughout Malawi. This is extremely important when trying to accurately depict risk in vulnerable regions, as such maps often have a lot of influence in impacting government action and investment. 

It is quite obvious that reproducibility was not a main concern of Malcomb et. al. when publishing their findings. This is unsurprising, as the majority of publish scientific work is completely unconcrned by issues of reproducibility and replicability within their results. As we have discussed at length in this class, that is highly problematic. Luckily, though, the standard is shifting as more researchers and even just participants like ourselves in the Open Source GIS world are pushing for more open, equitable, and collaborative work. We as a class are striving to do so by being very detailed about where our data comes from and how we accessed it, what tools we used and in what way, and by attaching our SQL codes and data to public pages like this Github repository. By creating more open source material, we are working towards creating more valuable and scientifically-sound research while also increasing public access to that research. 



Back to [home](index.md)

