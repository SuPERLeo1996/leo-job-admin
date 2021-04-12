FROM openjdk:8-jre-slim
MAINTAINER leo

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD target/xxl-job-admin-*.jar /opt/images/xxl-job-admin.jar

ENTRYPOINT ["nohup","java -jar $JAVA_OPTS /opt/images/xxl-job-admin.jar","&"]