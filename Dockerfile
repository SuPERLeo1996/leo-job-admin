FROM openjdk:8-jre-slim
MAINTAINER leo

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD target/leo-job-admin-*.jar /opt/images/leo-job-admin.jar

ENTRYPOINT ["nohup","java ","-jar","/opt/images/leo-job-admin.jar","&"]