FROM fabric8/java-jboss-openjdk8-jdk:1.1.7

ENV JAVA_APP_JAR helloworld-service-fat.jar
ENV AB_OFF true
ENV JAVA_OPTIONS -Xmx256m

ADD target/helloworld-service-fat.jar /app/
ADD config.json /app/

EXPOSE 8080

