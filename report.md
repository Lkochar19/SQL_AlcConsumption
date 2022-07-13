# Overview
Name / Title: Alcohol Consumption: Where Do People Drink The Most Beer, Wine And Spirits?
Link to Data: https://www.kaggle.com/mysarahmadbhat/alcohol-consumption
Source / Origin:
Author or Creator: World Health Organization, Global Information System on Alcohol and Health (GISAH
Publication Date: 2010
Publisher: World Health Organization, Kaggle
Version or Data Accessed: 2010
License: CC0: Public Domain
Can You Use this Data Set for Your Intended Use Case? Yes

Format
Overview
Format: .csv
Size: 4KB
Number of Records: 193

Fields or Column Headers
Field/Column 1: Country - string
Field/Column 2: # of beer servings - int
Field/Column 3: # of spirit servings - int
Field/Column 4: # of wine servings - int
Field/Column 5: total litres of pure alcohol - float

# Table Design
table name: drink

country varchar(40) UNIQUE PRIMARY KEY
*beer_servings integer
*spirit_servings integer
*wine_servings integer
*total_litres float

*allowed null values - missing data -> 0

# Import
import successful w/o error!

# Database Information
1. show all of databases in your postgres instance
input : \l
output:
                                     List of databases
    Name    |     Owner     | Encoding | Collate | Ctype |        Access privileges        
------------+---------------+----------+---------+-------+---------------------------------
 demo       | lucykocharian | UTF8     | C       | C     | 
 homework05 | lucykocharian | UTF8     | C       | C     | 
 postgres   | lucykocharian | UTF8     | C       | C     | 
 template0  | lucykocharian | UTF8     | C       | C     | =c/lucykocharian               +
            |               |          |         |       | lucykocharian=CTc/lucykocharian
 template1  | lucykocharian | UTF8     | C       | C     | =c/lucykocharian               +
            |               |          |         |       | lucykocharian=CTc/lucykocharian
(5 rows)

2. (making sure you're connected to homework05 database) show all of the tables in your database
input: \dt
output:
           List of relations
 Schema | Name  | Type  |     Owner     
--------+-------+-------+---------------
 public | drink | table | lucykocharian
(1 row)

3. finally, show some information about the table you created and imported data into: find a way to show its columns, types and constraints (hint: describe the table)

input: \d drink
output: 
                           Table "public.drink"
     Column      |         Type          | Collation | Nullable | Default 
-----------------+-----------------------+-----------+----------+---------
 country         | character varying(40) |           | not null | 
 beer_servings   | integer               |           |          | 
 spirit_servings | integer               |           |          | 
 wine_servings   | integer               |           |          | 
 total_litres    | double precision      |           | not null | 
Indexes:
    "drink_pkey" PRIMARY KEY, btree (country)

# Query Results

```
### 1. the total number of rows in the database
 count 
-------
   193
(1 row)

```

```
### 2. show the first 15 rows, but only display 3 columns (your choice)
      country      | beer_servings | total_litres 
-------------------+---------------+--------------
 Afghanistan       |             0 |            0
 Albania           |            89 |          4.9
 Algeria           |            25 |          0.7
 Andorra           |           245 |         12.4
 Angola            |           217 |          5.9
 Antigua & Barbuda |           102 |          4.9
 Argentina         |           193 |          8.3
 Armenia           |            21 |          3.8
 Australia         |           261 |         10.4
 Austria           |           279 |          9.7
 Azerbaijan        |            21 |          1.3
 Bahamas           |           122 |          6.3
 Bahrain           |            42 |            2
 Bangladesh        |             0 |            0
 Barbados          |           143 |          6.3
(15 rows)

```

```
### 3. do the same as above, but chose a column to sort on, and sort in descending order
      country       | beer_servings | total_litres 
--------------------+---------------+--------------
 Belarus            |           142 |         14.4
 Lithuania          |           343 |         12.9
 Andorra            |           245 |         12.4
 Grenada            |           199 |         11.9
 Czech Republic     |           361 |         11.8
 France             |           127 |         11.8
 Russian Federation |           247 |         11.5
 Slovakia           |           196 |         11.4
 Ireland            |           313 |         11.4
 Luxembourg         |           236 |         11.4
 Germany            |           346 |         11.3
 Hungary            |           234 |         11.3
 Portugal           |           194 |           11
 Poland             |           343 |         10.9
 Slovenia           |           270 |         10.6
(15 rows)

```

```
### 4. add a new column without a default value
ALTER TABLE

```

```
### 5. set the value of that new column
ALTER TABLE

```

```
### 6. show only the unique (non duplicates) of a column of your choice
           country            | total_litres 
------------------------------+--------------
 New Zealand                  |          9.3
 Ukraine                      |          8.9
 Morocco                      |          0.5
 Kuwait                       |            0
 Hungary                      |         11.3
 Kenya                        |          1.8
 Tajikistan                   |          0.3
 Luxembourg                   |         11.4
 Nicaragua                    |          3.5
 Thailand                     |          6.4
 Niger                        |          0.1
 Turkey                       |          1.4
 Chile                        |          7.6
 Mozambique                   |          1.3
 Vanuatu                      |          0.9
 Cote d'Ivoire                |            4
 Estonia                      |          9.5
 Bahrain                      |            2
 Madagascar                   |          0.8
 Sierra Leone                 |          6.7
 Moldova                      |          6.3
 Mongolia                     |          4.9


```

```
### 7. group rows together by a column value (your choice) and use an aggregate function to calculate something about that group 
           country            | sum  
------------------------------+------
 Indonesia                    |  0.1
 Bangladesh                   |    0
 Venezuela                    |  7.7
 Kiribati                     |    1
 Cameroon                     |  5.8
 Luxembourg                   | 11.4
 Czech Republic               | 11.8
 Sweden                       |  7.2
 St. Lucia                    | 10.1
 Uganda                       |  8.3
 Montenegro                   |  4.9
 Jordan                       |  0.5
 Dominican Republic           |  6.2
 Ireland                      | 11.4
 Cambodia                     |  2.2
 Macedonia                    |  3.9
 Singapore                    |  1.5
 Papua New Guinea             |  1.5
 Sri Lanka                    |  2.2
 San Marino                   |    0
 Laos                         |  6.2
 Uzbekistan                   |  2.4

```

```
### 8. now, using the same grouping query or creating another one, find a way to filter the query results based on the values for the groups 
           country            | sum  
------------------------------+------
 Iran                         |    0
 Libya                        |    0
 Somalia                      |    0
 Monaco                       |    0
 Marshall Islands             |    0
 Afghanistan                  |    0
 San Marino                   |    0
 Kuwait                       |    0
 Pakistan                     |    0
 Mauritania                   |    0
 Bangladesh                   |    0
 North Korea                  |    0
 Maldives                     |    0
 Myanmar                      |  0.1
 Timor-Leste                  |  0.1
 Indonesia                    |  0.1
 Niger                        |  0.1
 Yemen                        |  0.1
 Comoros                      |  0.1
 Saudi Arabia                 |  0.1
 Nepal                        |  0.2
 Guinea                       |  0.2
 Egypt                        |  0.2
 Iraq                         |  0.2
 Senegal                      |  0.3
 Malaysia                     |  0.3
 Tajikistan                   |  0.3
 Chad                         |  0.4
 Bhutan                       |  0.4
 Eritrea                      |  0.5
 Morocco                      |  0.5
 Jordan                       |  0.5
 Mali                         |  0.6
 Brunei                       |  0.6
 Ethiopia                     |  0.7
 Oman                         |  0.7
 Algeria                      |  0.7
 Madagascar                   |  0.8
 Vanuatu                      |  0.9
 Qatar                        |  0.9
 Kiribati                     |    1
 Tuvalu                       |    1
 Syria                        |    1
 Nauru                        |    1
 Tonga                        |  1.1
 Benin                        |  1.1
 Djibouti                     |  1.1
 Solomon Islands              |  1.2
 Tunisia                      |  1.3
 Mozambique                   |  1.3
 Togo                         |  1.3
 Azerbaijan                   |  1.3
 Turkey                       |  1.4
 Singapore                    |  1.5
 Malawi                       |  1.5
 Papua New Guinea             |  1.5
 Sudan                        |  1.7
 Congo                        |  1.7
 Kenya                        |  1.8
 Central African Republic     |  1.8
 Ghana                        |  1.8
 Lebanon                      |  1.9
 Fiji                         |    2
 Vietnam                      |    2
 Bahrain                      |    2
 Cambodia                     |  2.2
 Sri Lanka                    |  2.2
 India                        |  2.2
 Guatemala                    |  2.2
 Turkmenistan                 |  2.2
 El Salvador                  |  2.2
 Micronesia                   |  2.3
 DR Congo                     |  2.3
 Uzbekistan                   |  2.4
 Gambia                       |  2.4
 Kyrgyzstan                   |  2.4
 Zambia                       |  2.5
 Israel                       |  2.5
 Guinea-Bissau                |  2.5
 Samoa                        |  2.6
 Mauritius                    |  2.6
 Lesotho                      |  2.8
 United Arab Emirates         |  2.8
 Honduras                     |    3
 Liberia                      |  3.1
 Jamaica                      |  3.4
 Nicaragua                    |  3.5
 Bolivia                      |  3.8
 Armenia                      |  3.8
 Macedonia                    |  3.9
 Cote d'Ivoire                |    4
 Cabo Verde                   |    4
 Seychelles                   |  4.1
 Cuba                         |  4.2
 Sao Tome & Principe          |  4.2
 Ecuador                      |  4.2
 Colombia                     |  4.2
 Burkina Faso                 |  4.3
 Costa Rica                   |  4.4
 Bosnia-Herzegovina           |  4.6
 Philippines                  |  4.6
 Zimbabwe                     |  4.7
 Swaziland                    |  4.7
 Mongolia                     |  4.9
 Montenegro                   |  4.9
 Antigua & Barbuda            |  4.9
 Albania                      |  4.9
 China                        |    5
 Georgia                      |  5.4
 Botswana                     |  5.4
 Mexico                       |  5.5
 Suriname                     |  5.6
 Tanzania                     |  5.7
 Equatorial Guinea            |  5.8
 Cameroon                     |  5.8
 Angola                       |  5.9
 Cook Islands                 |  5.9
 Haiti                        |  5.9
 Peru                         |  6.1
 Dominican Republic           |  6.2
 Laos                         |  6.2
 Bahamas                      |  6.3
 Burundi                      |  6.3
 St. Vincent & the Grenadines |  6.3
 Barbados                     |  6.3
 Moldova                      |  6.3
 Trinidad & Tobago            |  6.4
 Thailand                     |  6.4
 Italy                        |  6.5
 Malta                        |  6.6
 Dominica                     |  6.6
 Uruguay                      |  6.6
 Iceland                      |  6.6
 Norway                       |  6.7
 Sierra Leone                 |  6.7
 Belize                       |  6.8
 Rwanda                       |  6.8
 Kazakhstan                   |  6.8
 Namibia                      |  6.8
 Palau                        |  6.9
 Japan                        |    7
 Niue                         |    7
 Guyana                       |  7.1
 Sweden                       |  7.2
 Panama                       |  7.2
 Brazil                       |  7.2
 Paraguay                     |  7.3
 Chile                        |  7.6
 St. Kitts & Nevis            |  7.7
 Venezuela                    |  7.7
 Cyprus                       |  8.2
 South Africa                 |  8.2
 Canada                       |  8.2
 Argentina                    |  8.3
 Greece                       |  8.3
 Uganda                       |  8.3
 USA                          |  8.7
 Gabon                        |  8.9
 Ukraine                      |  8.9
 Nigeria                      |  9.1
 New Zealand                  |  9.3
 Netherlands                  |  9.4
 Estonia                      |  9.5
 Serbia                       |  9.6
 Austria                      |  9.7
 South Korea                  |  9.8
 Finland                      |   10
 Spain                        |   10
 St. Lucia                    | 10.1
 Switzerland                  | 10.2
 Croatia                      | 10.2
 Bulgaria                     | 10.3
 Denmark                      | 10.4
 Australia                    | 10.4
 United Kingdom               | 10.4
 Romania                      | 10.4
 Latvia                       | 10.5
 Belgium                      | 10.5
 Slovenia                     | 10.6
 Poland                       | 10.9
 Portugal                     |   11
 Germany                      | 11.3
 Hungary                      | 11.3
 Slovakia                     | 11.4
 Luxembourg                   | 11.4
 Ireland                      | 11.4
 Russian Federation           | 11.5
 France                       | 11.8
 Czech Republic               | 11.8
 Grenada                      | 11.9
 Andorra                      | 12.4
 Lithuania                    | 12.9
 Belarus                      | 14.4
(193 rows)

```

```
### 9. show countries where total litres > 10

      country       | beer_servings | spirit_servings | wine_servings | total_litres | climate 
--------------------+---------------+-----------------+---------------+--------------+---------
 Andorra            |           245 |             138 |           312 |         12.4 | 
 Australia          |           261 |              72 |           212 |         10.4 | 
 Belarus            |           142 |             373 |            42 |         14.4 | 
 Belgium            |           295 |              84 |           212 |         10.5 | 
 Bulgaria           |           231 |             252 |            94 |         10.3 | 
 Croatia            |           230 |              87 |           254 |         10.2 | 
 Czech Republic     |           361 |             170 |           134 |         11.8 | 
 Denmark            |           224 |              81 |           278 |         10.4 | 
 France             |           127 |             151 |           370 |         11.8 | 
 Germany            |           346 |             117 |           175 |         11.3 | 
 Grenada            |           199 |             438 |            28 |         11.9 | 
 Hungary            |           234 |             215 |           185 |         11.3 | 
 Ireland            |           313 |             118 |           165 |         11.4 | 
 Latvia             |           281 |             216 |            62 |         10.5 | 
 Lithuania          |           343 |             244 |            56 |         12.9 | 
 Luxembourg         |           236 |             133 |           271 |         11.4 | 
 Poland             |           343 |             215 |            56 |         10.9 | 
 Portugal           |           194 |              67 |           339 |           11 | 
 Romania            |           297 |             122 |           167 |         10.4 | 
 Russian Federation |           247 |             326 |            73 |         11.5 | 
 St. Lucia          |           171 |             315 |            71 |         10.1 | 
 Slovakia           |           196 |             293 |           116 |         11.4 | 
 Slovenia           |           270 |              51 |           276 |         10.6 | 
 Switzerland        |           185 |             100 |           280 |         10.2 | 
 United Kingdom     |           219 |             126 |           195 |         10.4 | 
(25 rows)
```

```
### 10. show countries where total litres < 10
           country            | beer_servings | spirit_servings | wine_servings | total_litres | climate 
------------------------------+---------------+-----------------+---------------+--------------+---------
 Afghanistan                  |             0 |               0 |             0 |            0 | 
 Albania                      |            89 |             132 |            54 |          4.9 | 
 Algeria                      |            25 |               0 |            14 |          0.7 | 
 Angola                       |           217 |              57 |            45 |          5.9 | 
 Antigua & Barbuda            |           102 |             128 |            45 |          4.9 | 
 Argentina                    |           193 |              25 |           221 |          8.3 | 
 Armenia                      |            21 |             179 |            11 |          3.8 | 
 Austria                      |           279 |              75 |           191 |          9.7 | 
 Azerbaijan                   |            21 |              46 |             5 |          1.3 | 
 Bahamas                      |           122 |             176 |            51 |          6.3 | 
 Bahrain                      |            42 |              63 |             7 |            2 | 
 Bangladesh                   |             0 |               0 |             0 |            0 | 
 Barbados                     |           143 |             173 |            36 |          6.3 | 
 Belize                       |           263 |             114 |             8 |          6.8 | 
 Benin                        |            34 |               4 |            13 |          1.1 | 
 Bhutan                       |            23 |               0 |             0 |          0.4 | 
 Bolivia                      |           167 |              41 |             8 |          3.8 | 
 Bosnia-Herzegovina           |            76 |             173 |             8 |          4.6 | 
 Botswana                     |           173 |              35 |            35 |          5.4 | 
 Brazil                       |           245 |             145 |            16 |          7.2 | 
 Brunei                       |            31 |               2 |             1 |          0.6 | 
 Burkina Faso                 |            25 |               7 |             7 |          4.3 | 
 Burundi                      |            88 |               0 |             0 |          6.3 | 
 Cote d'Ivoire                |            37 |               1 |             7 |            4 | 
 Cabo Verde                   |           144 |              56 |            16 |            4 | 
 Cambodia                     |            57 |              65 |             1 |          2.2 | 
 Cameroon                     |           147 |               1 |             4 |          5.8 | 
 Canada                       |           240 |             122 |           100 |          8.2 | 
 Central African Republic     |            17 |               2 |             1 |          1.8 | 
 Chad                         |            15 |               1 |             1 |          0.4 | 
 Chile                        |           130 |             124 |           172 |          7.6 | 
 China                        |            79 |             192 |             8 |            5 | 
 Colombia                     |           159 |              76 |             3 |          4.2 | 
 Comoros                      |             1 |               3 |             1 |          0.1 | 
 Congo                        |            76 |               1 |             9 |          1.7 | 
 Cook Islands                 |             0 |             254 |            74 |          5.9 | 
 Costa Rica                   |           149 |              87 |            11 |          4.4 | 
 Cuba                         |            93 |             137 |             5 |          4.2 | 
 Cyprus                       |           192 |             154 |           113 |          8.2 | 
 North Korea                  |             0 |               0 |             0 |            0 | 
 DR Congo                     |            32 |               3 |             1 |          2.3 | 
 Djibouti                     |            15 |              44 |             3 |          1.1 | 
 Dominica                     |            52 |             286 |            26 |          6.6 | 
 Dominican Republic           |           193 |             147 |             9 |          6.2 | 
 Ecuador                      |           162 |              74 |             3 |          4.2 | 
 Egypt                        |             6 |               4 |             1 |          0.2 | 
 El Salvador                  |            52 |              69 |             2 |          2.2 | 
 Equatorial Guinea            |            92 |               0 |           233 |          5.8 | 
 Eritrea                      |            18 |               0 |             0 |          0.5 | 
 Estonia                      |           224 |             194 |            59 |          9.5 | 
 Ethiopia                     |            20 |               3 |             0 |          0.7 | 
 Fiji                         |            77 |              35 |             1 |            2 | 
 Gabon                        |           347 |              98 |            59 |          8.9 | 
 Gambia                       |             8 |               0 |             1 |          2.4 | 
 Georgia                      |            52 |             100 |           149 |          5.4 | 
 Ghana                        |            31 |               3 |            10 |          1.8 | 
 Greece                       |           133 |             112 |           218 |          8.3 | 
 Guatemala                    |            53 |              69 |             2 |          2.2 | 
 Guinea                       |             9 |               0 |             2 |          0.2 | 
 Guinea-Bissau                |            28 |              31 |            21 |          2.5 | 
 Guyana                       |            93 |             302 |             1 |          7.1 | 
 Haiti                        |             1 |             326 |             1 |          5.9 | 
 Honduras                     |            69 |              98 |             2 |            3 | 
 Iceland                      |           233 |              61 |            78 |          6.6 | 
 India                        |             9 |             114 |             0 |          2.2 | 
 Indonesia                    |             5 |               1 |             0 |          0.1 | 
 Iran                         |             0 |               0 |             0 |            0 | 
 Iraq                         |             9 |               3 |             0 |          0.2 | 
 Israel                       |            63 |              69 |             9 |          2.5 | 
 Italy                        |            85 |              42 |           237 |          6.5 | 
 Jamaica                      |            82 |              97 |             9 |          3.4 | 
 Japan                        |            77 |             202 |            16 |            7 | 
 Jordan                       |             6 |              21 |             1 |          0.5 | 
 Kazakhstan                   |           124 |             246 |            12 |          6.8 | 
 Kenya                        |            58 |              22 |             2 |          1.8 | 
 Kiribati                     |            21 |              34 |             1 |            1 | 
 Kuwait                       |             0 |               0 |             0 |            0 | 
 Kyrgyzstan                   |            31 |              97 |             6 |          2.4 | 
 Laos                         |            62 |               0 |           123 |          6.2 | 
 Lebanon                      |            20 |              55 |            31 |          1.9 | 
 Lesotho                      |            82 |              29 |             0 |          2.8 | 
 Liberia                      |            19 |             152 |             2 |          3.1 | 
 Libya                        |             0 |               0 |             0 |            0 | 
 Madagascar                   |            26 |              15 |             4 |          0.8 | 
 Malawi                       |             8 |              11 |             1 |          1.5 | 
 Malaysia                     |            13 |               4 |             0 |          0.3 | 
 Maldives                     |             0 |               0 |             0 |            0 | 
 Mali                         |             5 |               1 |             1 |          0.6 | 
 Malta                        |           149 |             100 |           120 |          6.6 | 
 Marshall Islands             |             0 |               0 |             0 |            0 | 
 Mauritania                   |             0 |               0 |             0 |            0 | 
 Mauritius                    |            98 |              31 |            18 |          2.6 | 
 Mexico                       |           238 |              68 |             5 |          5.5 | 
 Micronesia                   |            62 |              50 |            18 |          2.3 | 
 Monaco                       |             0 |               0 |             0 |            0 | 
 Mongolia                     |            77 |             189 |             8 |          4.9 | 
 Montenegro                   |            31 |             114 |           128 |          4.9 | 
 Morocco                      |            12 |               6 |            10 |          0.5 | 
 Mozambique                   |            47 |              18 |             5 |          1.3 | 
 Myanmar                      |             5 |               1 |             0 |          0.1 | 
 Namibia                      |           376 |               3 |             1 |          6.8 | 
 Nauru                        |            49 |               0 |             8 |            1 | 
 Nepal                        |             5 |               6 |             0 |          0.2 | 
 Netherlands                  |           251 |              88 |           190 |          9.4 | 
 New Zealand                  |           203 |              79 |           175 |          9.3 | 
 Nicaragua                    |            78 |             118 |             1 |          3.5 | 
 Niger                        |             3 |               2 |             1 |          0.1 | 
 Nigeria                      |            42 |               5 |             2 |          9.1 | 
 Niue                         |           188 |             200 |             7 |            7 | 
 Norway                       |           169 |              71 |           129 |          6.7 | 
 Oman                         |            22 |              16 |             1 |          0.7 | 
 Pakistan                     |             0 |               0 |             0 |            0 | 
 Palau                        |           306 |              63 |            23 |          6.9 | 
 Panama                       |           285 |             104 |            18 |          7.2 | 
 Papua New Guinea             |            44 |              39 |             1 |          1.5 | 
 Paraguay                     |           213 |             117 |            74 |          7.3 | 
 Peru                         |           163 |             160 |            21 |          6.1 | 
 Philippines                  |            71 |             186 |             1 |          4.6 | 
 Qatar                        |             1 |              42 |             7 |          0.9 | 
 South Korea                  |           140 |              16 |             9 |          9.8 | 
 Moldova                      |           109 |             226 |            18 |          6.3 | 
 Rwanda                       |            43 |               2 |             0 |          6.8 | 
 St. Kitts & Nevis            |           194 |             205 |            32 |          7.7 | 
 St. Vincent & the Grenadines |           120 |             221 |            11 |          6.3 | 
 Samoa                        |           105 |              18 |            24 |          2.6 | 
 San Marino                   |             0 |               0 |             0 |            0 | 
 Sao Tome & Principe          |            56 |              38 |           140 |          4.2 | 
 Saudi Arabia                 |             0 |               5 |             0 |          0.1 | 
 Senegal                      |             9 |               1 |             7 |          0.3 | 
 Serbia                       |           283 |             131 |           127 |          9.6 | 
 Seychelles                   |           157 |              25 |            51 |          4.1 | 
 Sierra Leone                 |            25 |               3 |             2 |          6.7 | 
 Singapore                    |            60 |              12 |            11 |          1.5 | 
 Solomon Islands              |            56 |              11 |             1 |          1.2 | 
 Somalia                      |             0 |               0 |             0 |            0 | 
 South Africa                 |           225 |              76 |            81 |          8.2 | 
 Sri Lanka                    |            16 |             104 |             0 |          2.2 | 
 Sudan                        |             8 |              13 |             0 |          1.7 | 
 Suriname                     |           128 |             178 |             7 |          5.6 | 
 Swaziland                    |            90 |               2 |             2 |          4.7 | 
 Sweden                       |           152 |              60 |           186 |          7.2 | 
 Syria                        |             5 |              35 |            16 |            1 | 
 Tajikistan                   |             2 |              15 |             0 |          0.3 | 
 Thailand                     |            99 |             258 |             1 |          6.4 | 
 Macedonia                    |           106 |              27 |            86 |          3.9 | 
 Timor-Leste                  |             1 |               1 |             4 |          0.1 | 
 Togo                         |            36 |               2 |            19 |          1.3 | 
 Tonga                        |            36 |              21 |             5 |          1.1 | 
 Trinidad & Tobago            |           197 |             156 |             7 |          6.4 | 
 Tunisia                      |            51 |               3 |            20 |          1.3 | 
 Turkey                       |            51 |              22 |             7 |          1.4 | 
 Turkmenistan                 |            19 |              71 |            32 |          2.2 | 
 Tuvalu                       |             6 |              41 |             9 |            1 | 
 Uganda                       |            45 |               9 |             0 |          8.3 | 
 Ukraine                      |           206 |             237 |            45 |          8.9 | 
 United Arab Emirates         |            16 |             135 |             5 |          2.8 | 
 Tanzania                     |            36 |               6 |             1 |          5.7 | 
 USA                          |           249 |             158 |            84 |          8.7 | 
 Uruguay                      |           115 |              35 |           220 |          6.6 | 
 Uzbekistan                   |            25 |             101 |             8 |          2.4 | 
 Vanuatu                      |            21 |              18 |            11 |          0.9 | 
 Venezuela                    |           333 |             100 |             3 |          7.7 | 
 Vietnam                      |           111 |               2 |             1 |            2 | 
 Yemen                        |             6 |               0 |             0 |          0.1 | 
 Zambia                       |            32 |              19 |             4 |          2.5 | 
 Zimbabwe                     |            64 |              18 |             4 |          4.7 | 
(166 rows)

```

```
### 11. show countries where total litres = 10
 country | beer_servings | spirit_servings | wine_servings | total_litres | climate 
---------+---------------+-----------------+---------------+--------------+---------
 Finland |           263 |             133 |            97 |           10 | 
 Spain   |           284 |             157 |           112 |           10 | 
(2 rows)

```

```
### 12. show countries where beer < 100

         country          | beer_servings 
--------------------------+---------------
 Afghanistan              |             0
 Albania                  |            89
 Algeria                  |            25
 Armenia                  |            21
 Azerbaijan               |            21
 Bahrain                  |            42
 Bangladesh               |             0
 Benin                    |            34
 Bhutan                   |            23
 Bosnia-Herzegovina       |            76
 Brunei                   |            31
 Burkina Faso             |            25
 Burundi                  |            88
 Cote d'Ivoire            |            37
 Cambodia                 |            57
 Central African Republic |            17
 Chad                     |            15
 China                    |            79
 Comoros                  |             1
 Congo                    |            76
 Cook Islands             |             0
 Cuba                     |            93
 North Korea              |             0
 DR Congo                 |            32
 Djibouti                 |            15
 Dominica                 |            52
 Egypt                    |             6
 El Salvador              |            52
 Equatorial Guinea        |            92
 Eritrea                  |            18
 Ethiopia                 |            20
 Fiji                     |            77
 Gambia                   |             8
 Georgia                  |            52
 Ghana                    |            31
 Guatemala                |            53
 Guinea                   |             9
 Guinea-Bissau            |            28
 Guyana                   |            93
 Haiti                    |             1
 Honduras                 |            69
 India                    |             9
 Indonesia                |             5
 Iran                     |             0
 Iraq                     |             9
 Israel                   |            63
 Italy                    |            85
 Jamaica                  |            82
 Japan                    |            77
 Jordan                   |             6
 Kenya                    |            58
 Kiribati                 |            21
 Kuwait                   |             0
 Kyrgyzstan               |            31
 Laos                     |            62
 Lebanon                  |            20
 Lesotho                  |            82
 Liberia                  |            19
 Libya                    |             0
 Madagascar               |            26
 Malawi                   |             8
 Malaysia                 |            13
 Maldives                 |             0
 Mali                     |             5
 Marshall Islands         |             0
 Mauritania               |             0
 Mauritius                |            98
 Micronesia               |            62
 Monaco                   |             0
 Mongolia                 |            77
 Montenegro               |            31
 Morocco                  |            12
 Mozambique               |            47
 Myanmar                  |             5
 Nauru                    |            49
 Nepal                    |             5
 Nicaragua                |            78
 Niger                    |             3
 Nigeria                  |            42
 Oman                     |            22
 Pakistan                 |             0
 Papua New Guinea         |            44
 Philippines              |            71
 Qatar                    |             1
 Rwanda                   |            43
 San Marino               |             0
 Sao Tome & Principe      |            56
 Saudi Arabia             |             0
 Senegal                  |             9
 Sierra Leone             |            25
 Singapore                |            60
 Solomon Islands          |            56
 Somalia                  |             0
 Sri Lanka                |            16
 Sudan                    |             8
 Swaziland                |            90
 Syria                    |             5
 Tajikistan               |             2
 Thailand                 |            99
 Timor-Leste              |             1
 Togo                     |            36
 Tonga                    |            36
 Tunisia                  |            51
 Turkey                   |            51
 Turkmenistan             |            19
 Tuvalu                   |             6
 Uganda                   |            45
 United Arab Emirates     |            16
 Tanzania                 |            36
 Uzbekistan               |            25
 Vanuatu                  |            21
 Yemen                    |             6
 Zambia                   |            32
 Zimbabwe                 |            64
(114 rows)
```