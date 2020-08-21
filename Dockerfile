FROM openjdk:12

ARG XMX=1024m

ENV XMX=$XMX

VOLUME /tmp

EXPOSE 8762

ADD ./target/st-eureka-server-0.0.1-SNAPSHOT.jar st-eureka-server.jar

ENTRYPOINT java -Xmx$XMX -jar /st-eureka-server.jar