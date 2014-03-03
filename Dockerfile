FROM tianon/debian:7.3
MAINTAINER Alexandre Rio <contact@alexrio.fr>


RUN apt-get update
RUN apt-get install -y openjdk-7-jre wget
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/
RUN wget https://suchserver.fr/SuchCrawling.jar
RUN mkdir res/
RUN wget https://suchserver.fr/tk.data -O res/tk.data

CMD ["java", "-jar", "SuchCrawling.jar"]
