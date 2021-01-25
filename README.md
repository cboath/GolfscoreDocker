A prepopulated mysql container ?
================================

Borrowed code from https://github.com/lindycoder/prepopulated-mysql-container-example

But how ?
---------

The mysql/mariadb container image contain an init script that will execute everything in `/docker-entrypoint-initdb.d/`

see `Initializing a fresh instance` @ https://hub.docker.com/_/mariadb/

So let's run this initialization in a multi-stage build and copy the initialized DB in the new image :D

(see comments in dockerfile for details of the hack) 

Try it!
======

Clone this then:

```
docker build --tag golfscore-image .
docker run -d --rm --name golfscore-container golfscore-image 
docker run -it --rm --link golfscore-container mariadb:latest mysql -hgolfscore-container -uroot -proot golfScore -e "select * from Scores;"
```
To stop the container run 
```
docker stop golfscore-container
```