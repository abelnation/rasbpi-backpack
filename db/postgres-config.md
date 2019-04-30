Based on:
https://opensource.com/article/17/10/set-postgres-database-your-raspberry-pi


```
# switch to postgres user
$ sudo su postgres

# create pi user
$ createuser pi -P --interactive

# connect to postgres
$ psql

# create database
> create database test;

# connect to newly created db
$ psql test
```
