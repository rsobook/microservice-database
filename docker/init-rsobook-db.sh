#!/bin/bash

########################
### CREATE DATABASES
########################
psql -v ON_ERROR_STOP=1 --username postgres <<-EOSQL
    CREATE DATABASE "rsobook-pet";
    CREATE DATABASE "rsobook-user";
	CREATE DATABASE "rsobook-user_friends";
	CREATE DATABASE "rsobook-user_wall";
	CREATE DATABASE "rsobook-images";
EOSQL


############################
### CREATE public.pet TABLE
############################
psql -U postgres -d rsobook-pet -a -f /usr/sql/create-table-pet.sql
psql -U postgres -d rsobook-pet -f /usr/sql/insert-table-pet.sql


############################
### CREATE public.user TABLE
############################
psql -U postgres -d rsobook-user -a -f /usr/sql/create-table-user.sql
psql -U postgres -d rsobook-user -f /usr/sql/insert-table-user.sql


############################
### CREATE public.user_friends TABLE
############################
psql -U postgres -d rsobook-user_friends -a -f /usr/sql/create-table-user_friends.sql
psql -U postgres -d rsobook-user_friends -f /usr/sql/insert-table-user_friends.sql


############################
### CREATE public.user_messages TABLE
############################
psql -U postgres -d rsobook-user_wall -a -f /usr/sql/create-table-user_wall.sql
psql -U postgres -d rsobook-user_wall -f /usr/sql/insert-table-user_wall.sql

############################
### CREATE public.images TABLE
############################
psql -U postgres -d rsobook-images -a -f /usr/sql/create-table-images.sql
