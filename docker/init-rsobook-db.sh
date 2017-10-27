#!/bin/bash

########################
### CREATE DATABASES
########################
psql -v ON_ERROR_STOP=1 --username postgres <<-EOSQL
    CREATE DATABASE "rsobook-pet";
    CREATE DATABASE "rsobook-user";
	CREATE DATABASE "rsobook-user_friends";
	CREATE DATABASE "rsobook-user_messages";
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
psql -U postgres -d rsobook-user_messages -a -f /usr/sql/create-table-user_messages.sql
psql -U postgres -d rsobook-user_messages -f /usr/sql/insert-table-user_messages.sql
