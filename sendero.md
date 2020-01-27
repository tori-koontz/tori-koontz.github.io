
Here is a working version of my web map for the [Sendero Pacifico](senderopacifico.html)! 

Things I would like to fix: 

-Reset Highlight on trails layer so that the highlight is removed when the mouse is no longer on it. 

-Simplify the legend and turn off the Points of Interest layer to start off, or program a function that adds the layer only after a certain zoom layer. 

     map.on('zoomend', function () {
    		if (map.getZoom() < 14 && map.hasLayer('layer_PointsofInterestPuntodeInteres_8')) {
       		 map.removeLayer('layer_PointsofInterestPuntodeInteres_8');
    }
    		if (map.getZoom() >= 14 && map.hasLayer('layer_PointsofInterestPuntodeInteres_8') == true)
    {
        		map.addLayer('layer_PointsofInterestPuntodeInteres_8');
    }   
});

-Edit titles of towns to make it more readable. 

