FROM java:8

MAINTAINER creams <cccreams@outlook.com>

ADD ./target/experiment-eureka-server-0.0.1-SNAPSHOT.jar /app/

ENV username="root"
ENV password="eurekapwd"

EXPOSE 8761

ENTRYPOINT ["sh","-c","java -jar /app/experiment-eureka-server-0.0.1-SNAPSHOT.jar --spring.security.user.name=$username --spring.security.user.password=$password"]