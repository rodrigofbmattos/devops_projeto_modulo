FROM ubuntu

ARG JMETER_VERSION

ENV JMETER_VERSION ${JMETER_VERSION:-5.6.3}
ENV JMETER_HOME /jmeter/apache-jmeter-$JMETER_VERSION/
ENV PATH $JMETER_HOME/bin:$PATH

RUN apt-get update
RUN apt-get install -y default-jre
RUN apt-get install -y openjdk-17-jdk
RUN apt-get install -y wget

RUN mkdir /jmeter
WORKDIR /jmeter

RUN wget https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz
RUN tar -xzf apache-jmeter-$JMETER_VERSION.tgz
RUN rm apache-jmeter-$JMETER_VERSION.tgz

WORKDIR $JMETER_HOME

COPY product/jmeter/product-clusterip-stresstest.jmx /jmeter
COPY product/jmeter/product-clusterip-users.jmx /jmeter

WORKDIR $JMETER_HOME/bin

COPY product/docker/product-0.0.1-SNAPSHOT.jar /product/product-0.0.1-SNAPSHOT.jar
EXPOSE 8086
ENTRYPOINT ["java", "-jar", "/product/product-0.0.1-SNAPSHOT.jar"]