
# New York City Booms and Blooms

**This project explores the New York City building data (859,032 data points).**

**The historic construction booms in NYC are analyzed and visualized.**


[Github Repository](https://github.com/chadloh/proj1_nyc_building) |
[Presentation](https://1drv.ms/p/s!AtY5Rersg7_NgYs8Px6iF0dK5mNFBA?e=A7iuE9)






## Observations

#### New York City wasn’t built in a day
The population of NYC has grown exponentially in the 19th century due to the massive influx of immigrant. There were several immigration waves from different regions, such as the immigration from Northern and Western Europe in the 1880s, from Central, Eastern, and Southern Europe in the 1880s, from the Southern states during the great migration in the 1920s, and finally from Asia and Latin America after the Immigration and Nationality Act has passed in the 1960s. The population graph shows that the city population has plateaued in the late 20th century. However, the population is increasing again in the 21st century. The city has also grown along the population growth. And there were at least five construction booms that made this metropolis.
The five construction booms are visualized with bubble maps. The size of each bubble represents the sum of the new building area created in each census tract. The red bubbles represent residential buildings and the blue bubbles represent commercial buildings.

#### Gilded Age (1880-1905)
The first construction boom was in the 1880s, the Gilded Age. Mansions were built along 5th Avenue, and large development projects underwent in Downtown, Manhattan and Downtown, Brooklyn. The development was centralized in few areas.

#### Roaring 20s (1915-1935)
The second construction boom was during the Roaring 20s. After the construction of subway lines connecting from Manhattan to Queens, Brooklyn, and Bronx, more buildings were developed in the suburban areas. Flushing, Bushwick, Prospect Park, Bensonhurst, Bayridge, Norwood, and Bedford Park are some of the suburban neighborhood that were developed in this era. The urban sprawl has decentralized the city.

#### Post-war (1945-1965)
The third construction boom was after the World War II. More projects were developed in the further suburbs, and the urban sprawl reached the perimeter of the city, such as Flushing, Fresh Meadows, Ozone Park, and Coney Island. This meant that the city has saturated and there was no more easily accessible land to expand the city.

#### Wall Street Boom(1980-1995)
The fourth construction boom was in the late 20th century when Wall Street was booming. It was also the time when gentrification started in various parts of the city. The new construction projects were back in the city, such as the Financial District (Wall Street), Times Square, and the Upper East Side.

#### 21st Century(2000-2022)
The fifth construction boom is the current construction boom in the 21st century. New neighborhoods with skyscrapers are being developed in or near Manhattan, such as Hudson Yards, Long Island City, Billionaires’ Row, Downtown Brooklyn, and Battery Park City. This ‘recentralizing’ phenomenon is due to the high property values in Manhattan as well as the advances in construction technology. To fit these buildings into a limited space, many of the new buildings are not only tall, but also skinny. To explore more on this new trend, the slenderness of the buildings is analyzed and visualized.

#### Skinny is the new trend
The slenderness of a building can be defined as the aspect ratio of the height and width. For example, if a building is 100 ft wide and 500 ft tall, the slenderness would be 500/100 = 5. The existing buildings are ranked by the slenderness and plotted against the construction year. Note that the y-axis is not the height of the building, but the slenderness. The top 10 slender buildings were all constructed in the last 15 years, and most of the top 100 slender buildings were built in the past 20 years. This clearly tells us that skinny buildings are the new trend.






## Opinion

A clear trend of “development follows infrastructure”, can be found in the bubble maps. We can explore more in how the development of infrastructure affects the property development. How did the construction of bridges, tunnels, subway lines, and highways affect the historic development? Then what should the next project be if we want to decentralize NYC again to solve urban problems?

Recently Prof. Jason Barr in Rutgers University proposed a massive extension of Manhattan Island (“New Mannahatta” project) to solve the housing shortage and prevent damages due to climate change. Would this be necessary? A horizontal expansion might not be necessary if the current trend of vertical expansion proves to be sustainable and effective. Future works are required if we would like to predict the impact of building New Mannahatta.

## Analysis Process

### Data Storage and Cleaning

The data was stored in Google Cloud Storage, and was cleaned using Google BigQuery. The cleaning process included the following queries.
- `JOIN` the `PLUTO` data and the `Building Footprint` data
- `COUNT` the total buildings built and `SUM` the total building area created; `GROUP BY` boroughs and building types
- `SELECT` the data `WHERE` the building was built in each era

### Data analysis and visualization

Data analysis was performed with Python. Packages including `numpy`, `pandas`, `geopandas`, and `matplotlib` were used for the data analysis and basic plotting. The graphs and charts were edited using Adobe Illustrator.




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
