# Eureka Server

Server discovery and microservices registration.

## Running Development

```sh
$ mvn spring-boot:run
```

## Running Production

### Master Branch

Go to the master branch

```sh
$ git checkout master
```

### Generate jar

```sh
$ mvn clean package -DskipTests
```

### Create Network Docker

```sh
$ docker network create st
```

### Create image from Dockerfile

```sh
$ docker build -t st-eureka-server:ursus .
```

### Run Container

```sh
$ docker run -p 8762:8762 --name st-eureka-server --network st -d st-eureka-server:ursus
```

## License

[Agencia de Implementación - BSF Swissphoto - INCIGE](https://github.com/AgenciaImplementacion/st-eureka-server/blob/master/LICENSE)