# README

* Ruby version
   ```sh 
   	ruby 2.5.1
   	rails 5.2.1
   ```
* Model/Controller creation
   ```sh
   	rails g model User steps:integer distance:float exercise:integer sleep:float calories:integer user:string
   	rails g controller Users index import
   ```
* Sample CSV Data for import
 - lib/assets/Book1.csv
 ```csv
 	user,steps,distance,exercise,sleep,calories
	Moe,12078,2.61,32,7.25,1987
	Brad,13408,3.29,56,6.52,2305
	Curly,8756,2.31,24,8.15,1678
 ```
* Resources
- http://www.mattmorgante.com/technology/csv
