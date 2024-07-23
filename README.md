# RP1 (Ready Player One) Music App

## Description

RP1 is a basic Java and Spring-Boot app used for the [12(15) Factor App Workshop](https://github.com/cjudd/15-factor-app-workshop).

## Requirements
- Java 8
- Java IDE/Editor
- Docker

## Running

Run MySQL in a Docker container.
```
docker run --name rp1-music-db -e MYSQL_ROOT_PASSWORD=root+1 -e MYSQL_DATABASE=rp1 -e MYSQL_USER=rp1 -e MYSQL_PASSWORD=rp1+1 -p 3306:3306 -d mysql:latest
```
 
To run, use:
```
./mvnw spring-boot:run
```

Open a browser and navigate to http://localhost:8080.
