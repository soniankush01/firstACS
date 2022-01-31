FROM openjdk:11.0.13-slim-buster
#imagename from where to download base image according to project type
#ARG JAR_FILE=target/*.jar
#arg cab be used to pass env variables
#COPY ${JAR_FILE} app.jar

#the other instruction used to configure how the container will run
# run like docker build --build-arg JAR_FILE=build/libs/\*.jar -t springio/gs-spring-boot-docker .

#Create directory in container image for app code
RUN mkdir -p /usr/src/app

#Copy app cod to folder
COPY . /usr/src/app

#Set working directory context
WORKDIR /usr/src/app

RUN ./gradlew clean build

ENTRYPOINT ["java","-jar","/usr/src/app/build/libs/docker-app-0.0.1-SNAPSHOT.jar"]

# docker image  build -t ankush999/docker-app . ankush999 is mu hub id, any name and .
#refers i am runnning this command from same folder
# docker push ankush999/docker-app to push to central repo
#docker run -p 8080:8080 ankush999/docker-app