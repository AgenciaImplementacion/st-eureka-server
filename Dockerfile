FROM openjdk:11

ARG XMX=1024m
ARG PROFILE=production
ARG CLOUD_CONFIG

ENV XMX=$XMX
ENV PROFILE=$PROFILE
ENV CLOUD_CONFIG=$CLOUD_CONFIG

VOLUME /tmp

EXPOSE 8762

ADD ./target/st-eureka-server-0.0.1-SNAPSHOT.jar st-eureka-server.jar

ENTRYPOINT java -Xmx$XMX -jar /st-eureka-server.jar --spring.profiles.active=$PROFILE --spring.cloud.config.uri=$CLOUD_CONFIG