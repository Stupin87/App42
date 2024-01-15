FROM tomcat:9-jdk11
RUN apt update
RUN apt install -y openjdk:6
RUN apt install -y maven 
RUN apt install -y git 
WORKDIR /home/keglia/
RUN git clone https://github.com/Stupin87/App42.git
WORKDIR /home/keglia/App42
RUN mvn clean package
RUN mv /home/keglia/App42/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps