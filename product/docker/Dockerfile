FROM ubuntu
RUN apt-get update
RUN apt-get install -y openjdk-17-jdk
#RUN apt-get install -y default-jre
COPY product-0.0.1-SNAPSHOT.jar /product/product-0.0.1-SNAPSHOT.jar
EXPOSE 8086
ENTRYPOINT ["java", "-jar", "/product/product-0.0.1-SNAPSHOT.jar"]