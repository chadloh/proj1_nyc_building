
# Centralization, Decentralizatoin, and Recentralization


A brief description of what this project does and who it's for









## Abstract

New York City






[Github Repository](https://github.com/chadloh/proj1_nyc_building)

[Presentation](http://link.com)


## Analysis Process

#### Data Storage and Cleaning

The data was stored in Google Cloud Storage, and was cleaned using Google BigQuery. The cleaning process included the following queries.
- `JOIN` the `PLUTO` data and the `Building Footprint` data
- `COUNT` the total buildings built and `SUM` the total building area created; `GROUP BY` boroughs and building types
- `SELECT` the data `WHERE` the building was built in each era

#### Data analysis and plotting


#### Data scraping






## Authors

- [@chadloh](https://github.com/chadloh)


## Data sources

[**PLUTO**](https://www1.nyc.gov/site/planning/data-maps/open-data.page#pluto)

Publisher: NYC Department of City Planning

Last Updated: December 2021

Extensive land use and geographic data at the tax lot level in comma–separated values (CSV) file format. The PLUTO files contain more than seventy fields derived from data maintained by city agencies.


[**NYC Building Footprints**](https://data.cityofnewyork.us/Housing-Development/Building-Footprints/nqwf-w8eh)

Publisher: NYC Department of Information Technology & Telecommunications

Last Updated: Mar 2020

Building footprints represent the full perimeter outline of each building as viewed from directly above. Additional attribute information maintained for each feature includes: Building Identification Number (BIN); Borough, Block, and Lot information(BBL); ground elevation at building base; roof height above ground elevation; construction year, and feature type.


[**Decennial Census**](https://data.census.gov/cedsci/)

Publisher: US Census Bureau

Last Updated: 2020

The 2020 Census counted every person living in the United States and the five U.S. territories. It marked the 24th census in U.S. history and the first time that households were invited to respond to the census online.




