
# New York City's Boom and Bloom

**This project explores the New York City building data (859,032 data points).**

**The historic construction booms in NYC are analyzed and visualized.**


[Github Repository](https://github.com/chadloh/proj1_nyc_building) |
[Presentation](https://1drv.ms/p/s!AtY5Rersg7_NgYs826uoyV73B4ztAg?e=icY8mZ)







## Introduction

The Big Apple, the city that never sleeps, Empire city, the Capital of the World, the Center of the Universe, and *the city of dreams*, New York is one of the most famous, popular, and populous cities in the world.
The population of NYC grew exponentially in the 19th Century due to the massive influx of immigrants pursuing the American Dream. There were immigration waves from different regions in different periods: the immigration from Northern and Western Europe in the 1880s, from Central, Eastern, and Southern Europe in the 1880s, from the Southern states during the great migration in the 1920s, and finally from Asia and Latin America after the Immigration and Nationality Act of 1965 was signed into law. Even though the population graph shows that the city population has plateaued in the late 20th Century, the population is increasing again in the 21st Century. The 2020 Census showed that 629,000 people moved into the city in the past 10 years, about a 7.7% increase from 2010. Currently, New York has the highest population density of any major city in the United States, with over 27,000 people per square mile.

#### New York City wasn’t built in a day

The city itself has also grown with the population. There were at least five construction booms that made this metropolis. The Gilded Age (1880-1905), the Roaring 20s (1915-1935), the Post-war era (1945-1965), the Wall Street Boom(1980-1995), and the 21st Century(2000-Current). As seen from the graph below, the construction boom was not always equally distributed in the five boroughs, but the center of development shifted in each construction boom. New neighborhoods were formed in each boom, and local communities bloomed through these projects.

#### Project Goal

This project focuses on how new neighborhoods bloomed through the five construction booms. The details of the five construction booms are visualized with bubble maps in the next section. The size of each bubble represents the sum of the new building area created in each census tract. The red bubbles represent residential buildings, and the blue bubbles represent commercial buildings.


## The Five Construction Booms

#### Gilded Age (1880-1905)
The first construction boom was in the 1880s, the Gilded Age. Mansions were built along 5th Avenue, and large development projects were undergoing in Downtown Manhattan and Downtown Brooklyn. The development was centralized in a few areas.

#### Roaring 20s (1915-1935)
The second construction boom was during the Roaring 20s. After constructing subway lines connecting Manhattan to Queens, Brooklyn, and the Bronx, more buildings were developed in the suburban areas. Flushing, Bushwick, Prospect Park, Bensonhurst, Bayridge, Norwood, and Bedford Park are some of the suburban neighborhoods developed in this era. The urban sprawl has decentralized the city.

#### Post-war (1945-1965)
The third construction boom was after World War II. More projects were developed in the other suburbs, and the urban sprawl reached the city's perimeter, such as Flushing, Fresh Meadows, Ozone Park, and Coney Island. This meant that the city had saturated, and there was no more easily accessible land to expand the city.

#### Wall Street Boom(1980-1995)
The fourth construction boom was in the late 20th Century when Wall Street was booming. It was also the time when gentrification started in various parts of the city. The new construction projects were back in the city, such as the Financial District (Wall Street), Times Square, and the Upper East Side.

#### 21st Century(2000-2022)
The fifth construction boom is the current construction boom in the 21st Century. New neighborhoods with skyscrapers are being developed in or near Manhattan, such as Hudson Yards, Long Island City, Billionaires' Row, Downtown Brooklyn, and Battery Park City. This 'recentralizing' phenomenon is due to the high property values in Manhattan as well as the advances in construction technology. To fit these buildings into a limited space, many of the new buildings are not only tall but also skinny. The slenderness of the buildings is analyzed and visualized next in order to explore more about this new trend

#### Skinny is the new trend
The slenderness of a building can be defined as the aspect ratio of height and width. For example, if a building is 100 ft wide and 500 ft tall, the slenderness would be 500/100 = 5. The existing buildings are ranked by their slenderness and plotted against the construction year. Note that the y-axis is not the height of the building but the slenderness. The top 10 slender buildings were all constructed in the last 15 years, and most of the top 100 slender buildings were built in the past 20 years. This clearly tells us that skinny buildings are the new trend.






## Opinion

A clear trend of "development follows infrastructure" can be found in the bubble maps. We can explore more how the development of infrastructure affects property development. How did the construction of bridges, tunnels, subway lines, and highways affect historical development? Then what should the next project be if we want to decentralize NYC again to solve urban problems?

Recently Prof. Jason Barr at Rutgers University proposed a massive extension of Manhattan Island ("New Mannahatta" project) to solve the housing shortage and prevent damages due to climate change. Would this be necessary? A horizontal expansion might not be necessary if the current trend of vertical expansion proves to be sustainable and effective. Future works are required if we would like to predict the impact of building New Mannahatta. 

## Analysis Process

#### Data Storage and Cleaning

The data was stored in Google Cloud Storage, and was cleaned using Google BigQuery. The cleaning process included the following queries.
- `JOIN` the `PLUTO` data and the `Building Footprint` data
- `COUNT` the total buildings built and `SUM` the total building area created; `GROUP BY` boroughs and building types
- `SELECT` the data `WHERE` the building was built in each era

#### Data analysis and visualization

Data analysis was performed with Python. Packages including `numpy`, `pandas`, `geopandas`, and `matplotlib` were used for the data analysis and basic plotting. The graphs and charts were edited using Adobe Illustrator.




## Author

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
