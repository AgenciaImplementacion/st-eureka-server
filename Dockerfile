FROM openjdk:11

ARG XMX=1024m
ARG PROFILE=production

ENV XMX=$XMX
ENV PROFILE=$PROFILE

VOLUME /tmp

EXPOSE 8762

ADD ./target/st-eureka-server-0.0.1-SNAPSHOT.jar st-eureka-server.jar

ENTRYPOINT java -Xmx$XMX -jar /st-eureka-server.jar --spring.profiles.active=$PROFILE