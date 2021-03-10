Readme file for the Regional Snowfall Index (RSI) snowstorm shapefiles

-------------------------------------------------------------------------
-------------------------------------------------------------------------

I. CONTENTS OF ftp://ftp.ncdc.noaa.gov/pub/data/surface-snow-products

     - snowstorm-db_shapefile-readme_c20130529.txt (this file)

     - regional-snowfall-index_readme_c20130529.txt

     - regional-snowfall-index_c20130529.csv

     - ne-snowfall-impact-scale_c20130529.csv

     - Snowfall Database shapefiles.  TAR file of the GZIP-compressed storm specific     	  shapefiles

-------------------------------------------------------------------------
-------------------------------------------------------------------------

II. SHAPEFILE INFORMATION

Shapefiles are used in Geographical Information Systems (GIS) to store map features and associated attributes.  There is one TAR-GZIP shapefile for each storm.  These shapefiles can be used by those with GIS expertise to map and analyze these storms.  References for RSI and NESIS can be found at 'http://www.ncdc.noaa.gov/snow-and-ice/rsi/references'.

Naming conventions – example:
   snowstorm-db_storm-1_s19960106_e19960109_c20121005.tar.gz
   'storm-1'  ; the '-1' indicates that there was only one storm during this period 	   	           (Jan 6, 1996 - Jan 9, 1996)
   's19960106'; start date of the storm (Jan 6, 1996)
   'e19960109'; end date of the storm (Jan 9, 1996) 
   'c20121005'; date this file was created (Oct 5, 2012)

The shapefiles contain a separate record for each weather station where a snowfall observation was taken.  Each station includes the following attribute information;
   Name      ; name of the station (typically a city) where this snowfall data was   		          measured
   State     ; state where the station is located
   Elevation ; elevation of the station
   D1        ; snowfall on day 1 at this station (inches)
   .              .        
   .              .
   .              .
   D10       ; snowfall on day 10 (inches)
   Snowfall  ; total snowfall at this station (inches)
   Lat       ; latitude of the station (decimal degrees)
   Lon       ; longitude of the station (decimal degrees)
   GHCND_ID  ; GHCND ID for the station
   STORM_ID  ; concatenation of the start and end dates along with a number indicating    	          the number of storms during period specified by the start/end dates. 	         
   START_DATE; first day of the storm
   END_DATE  ; last day of the storm

