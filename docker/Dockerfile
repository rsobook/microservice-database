FROM postgres:9.6.5
MAINTAINER Jan Gasperlin "jg1724@student.uni-lj.si"
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD root
EXPOSE 5432:5432
ADD /sql/create-table-pet.sql /usr/sql/create-table-pet.sql
ADD /sql/insert-table-pet.sql /usr/sql/insert-table-pet.sql
ADD /sql/create-table-user.sql /usr/sql/create-table-user.sql
ADD /sql/insert-table-user.sql /usr/sql/insert-table-user.sql
ADD /sql/create-table-user_friends.sql /usr/sql/create-table-user_friends.sql
ADD /sql/insert-table-user_friends.sql /usr/sql/insert-table-user_friends.sql
ADD /sql/create-table-user_wall.sql /usr/sql/create-table-user_wall.sql
ADD /sql/insert-table-user_wall.sql /usr/sql/insert-table-user_wall.sql
ADD /sql/create-table-images.sql /usr/sql/create-table-images.sql
ADD init-rsobook-db.sh /docker-entrypoint-initdb.d/
