:: Batch script for ASTER elevation data: hillshade, sink detection, sink removal, flow accumulation, channel network 
:: Completed (or rather, attempted) by Tori Koontz, world's worst GIS student 

::set the path to your SAGA program
SET PATH=%PATH%;c:\saga6

::set the prefix to use for all names and outputs
SET pre=AS_

::set the directory in which you want to save ouputs. In the example below, part of the directory name is the prefix you entered above
SET od=W:\GEOG323_OpenSource\lab4\attempt2\ASTER_elevation

:: the following creates the output directory if it doesn't exist already
if not exist %od% mkdir %od%

:: Run Mosaicking tool, with consideration for the input -GRIDS, the -
saga_cmd grid_tools 3 -GRIDS=W:\GEOG323_OpenSource\lab4\SRTM_elevation\sRTM_N09W084.hgt; W:\GEOG323_OpenSource\lab4\SRTM_elevation\sRTM_N09W085.hgt -NAME=%pre%Mosaic -TYPE=9 -RESAMPLING=0 -OVERLAP=1 -MATCH=0 -TARGET_OUT_GRID=%od%\%pre%mosaic.sgrd

:: Run UTM Projection tool
saga_cmd pj_proj4 24 -SOURCE=%od%\%pre%mosaic.sgrd -RESAMPLING=0 -KEEP_TYPE=1 -GRID=mosaicUTM.sgrd -UTM_ZONE=17 -UTM_SOUTH=1

:: Hillshading 
saga_cmd ta_lighting 0 -ELEVATION=%od%\Mosaic\mosaicUTM.sgrd -SHADE=%od%\%pre%_Hillshade.sgrd -METHOD=0 -POSITION=0 -AZIMUTH=315.000000 -DECLINATION=45.000000 -DATE=2019-10-07 -TIME=12.000000 -EXAGGERATION=1.000000 -UNIT=0 -SHADOW=0 -NDIRS=8 -RADIUS=10.000000

::Sink Route Detection 
saga_cmd ta_preprocessor 1 -ELEVATION=%od%\Mosaic\mosaicUTM.sgrd -SINKROUTE=%od%\%pre%_sinkroute.sgrd -THRESHOLD=0 -THRSHEIGHT=100.000000

::Sink Removal 
saga_cmd ta_preprocessor 2 -DEM=%od%\Mosaic\mosaicUTM.sgrd -SINKROUTE=%od%\%pre%_sinkroute.sgrd -DEM_PREPROC=%od%\%pre%_sinkremoved.sgrd -METHOD=1 -THRESHOLD=0 -THRSHEIGHT=100.000000

::Flow Accumulation 
saga_cmd ta_hydrology 0 -ELEVATION=%od%\%pre%_sinkremoved.sgrd -SINKROUTE=%od%\%pre%_sinkroute.sgrd -WEIGHTS=NULL -FLOW=%od%\%pre%_FlowAccu.sgrd -VAL_INPUT=NULL -ACCU_MATERIAL=NULL -STEP=1 -FLOW_UNIT=1 -FLOW_LENGTH=NULL -LINEAR_VAL=NULL -LINEAR_DIR=NULL -METHOD=4 -LINEAR_DO=1 -LINEAR_MIN=500 -CONVERGENCE=1.100000

::Channel Network
saga_cmd ta_channels 0 -ELEVATION=%od%\%pre%_sinkremoved.sgrd -SINKROUTE=%od%\%pre%_sinkremoved.sgrd -CHNLNTWRK=%od%\%pre%_ChanlNetwork.sgrd -CHNLROUTE=%od%\%pre%_ChanlRoute.sgrd -SHAPES=%od%\%pre%_ChanlShapes -INIT_GRID=%od%\%pre%_FlowAccu.sgrd -INIT_METHOD=2 -INIT_VALUE=1000.000 -DIV_GRID=NULL -DIV_CELLS=5 -TRACE_WEIGHT=NULL -MINLEN=10

::print a completion message so that uneasy users feel confident that the batch script has finished!
ECHO Processing Complete!
PAUSE;