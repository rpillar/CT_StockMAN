# CT_StockMAN

A multi-channel store-front management application.

Currently only being developed for Ebay shops but the intention is that it will provide the means to integrate / aggregate data from different storefront providers (Ebay / Amazon / Shopify / Etsy ...). 

Load the following packages (the Highcharts package include Seaside) :-

```
Metacello new
	baseline: 'HighchartsSt';
	repository: 'github://ba-st/HighchartsSt:v9/repository';
	load.
```
```
Metacello new 
    smalltalkhubUser: 'TorstenBergmann' project: 'UDBC2';
    configuration: 'UDBC';
    version: #bleedingEdge;
    load.
```

Create the SQLite database using `db.sql`.

## Note

Currently only tested on MacOS - I've had issues trying to load Seaside / Highcharts into a Windows image (not sure why).
