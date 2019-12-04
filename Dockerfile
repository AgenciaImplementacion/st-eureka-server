FROM openjdk:12

VOLUME /tmp

EXPOSE 8762

ADD ./target/st-eureka-server-0.0.1-SNAPSHOT.jar st-eureka-server.jar

ENTRYPOINT java -jar /st-eureka-server.jar