# Data-Modeling-Exercise

The problem we were given was to survey everyone on our jobplace to get to know everyone's top skills, favorite snacks, drinks, etc... and then upload the data to a relational database. 

We divided this task into n steps
1. Decide which questions to ask
2. Create a online survey and survey everyone
3. Design the database schema
4. Choose, install, and configurate a Relational Database Management System (RDBMS)
5. Create database based on the previously designed database schema
6. Write script to populate the database based on the online survey output (.csv file)
7. How to see data?


## 1, 2-

We made a google survey with the following questions:
* Full name
* Top 3 hard skills (if applicable)
* Top 3 soft skills
* Career path
* Favorite alcoholic drink (If applicable)
* Favorite non-alcoholic drink
* Favorite snack
* Top 3 board games

## 3-
We then designed the database schema using draw.io and got the following:
![DBSchema](https://i.imgur.com/ryk2XOc.png)

## 4-
For the RDBMS we choose Postgresql with pgAdmin and we installed it into a Debian 9 virtual machine.

### Installing Postgresql and pgAdmin in Debian 9
To install Postgresql we just ran the apt-get command:
`apt-get install postgresql-10`

And to configure the database for local and remote connections we followed (This instructions)[https://suite.opengeo.org/docs/latest/dataadmin/pgGettingStarted/firstconnect.html]


Instead of installing and configuring pgAdmin, we used the docker image of pgAdmin to run it.
```
docker pull dpage/pgadmin4
docker run -p 80:80 \
-e "PGADMIN_DEFAULT_EMAIL=user@domain.com" \
-e "PGADMIN_DEFAULT_PASSWORD=SuperSecret" \
-d dpage/pgadmin4
```
##5-

To create the database and the tables, run the script with the following command ("postgres" in this case is the default username when installing postgresql :
`psql -U postgres -f CreateDBTables.sql`

This script creates a database named datamodeling with owner as postgres and all the tables.




##6-

Because this is a one time database population with a relatively small dataset, instead of writing a script using a programming language, we used excel formulas to design the INSERTs.







