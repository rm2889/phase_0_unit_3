# U3.W7: Intro to SQLite

## Release 0: Create a dummy database
##### sqlite3 dummy.db
CREATE TABLE users (


   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   
   ...>   first_name VARCHAR(64) NOT NULL,

   ...>   last_name  VARCHAR(64) NOT NULL,

   ...>   email VARCHAR(128) UNIQUE NOT NULL,

   ...>   created_at DATETIME NOT NULL,

   ...>   updated_at DATETIME NOT NULL

   ...> );

<!-- paste your terminal output here -->

## Release 1: Insert Data 

sqlite> INSERT INTO users

   ...> (first_name, last_name, email, created_at, updated_at)

   ...> VALUES

   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));

sqlite> select * from users

   ...> ;

id          first_name  last_name   email                  created_at           updated_at         

----------  ----------  ----------  ---------------------  -------------------  -------------------

1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-29 20:38:02  2014-04-29 20:38:02


<!-- paste your terminal output here -->

## Release 2: Multi-line commands
<!-- paste your terminal output here -->

id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-29 20:38:02  2014-04-29 20:38:02

2           Raghav      Malik       raghav1987@gmail.com   2014-04-29 20:53:13  2014-04-29 20:53:13

## Release 3: Add a column

sqlite> ALTER TABLE users

   ...> ADD nickname VARCHAR(64);

sqlite> update users set nickname = 'Kimchee' where id = 1;

sqlite> update users set nickname = 'ragmeister' where id = 2;

sqlite> select * from users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-29 20:38:02  2014-04-29 20:38:02  Kimchee   

2           Raghav      Malik       raghav1987@gmail.com   2014-04-29 20:53:13  2014-04-29 20:53:13  ragmeister

<!-- paste your terminal output here -->

## Release 4: Change a value
<!-- paste your terminal output here -->

sqlite> update users set nickname = 'Ninja Coder', first_name = 'Kimmy', updated_at= DATETIME('now') where id = 1;

sqlite> select * from users where id = 1;

id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------

1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-29 20:38:02  2014-04-29 21:32:45  Ninja Coder


## Release 5: Reflect
Good introduction to sqlite. Will hopefully use this a lot more in the days to come!
<!-- Add your reflection here -->