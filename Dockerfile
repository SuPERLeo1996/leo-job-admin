FROM openjdk:8u265-jdk
MAINTAINER leo

ENV PARAMS="&"

ENV TZ=PRC

ENV JAVA_OPTS="-XX:MetaspaceSize=128M -XX:MaxMetaspaceSize=128M -Xms256m -Xmx256m -Xmn64m -XX:+UseConcMarkSweepGC "

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD target/leo-job-admin-*.jar /opt/images/leo-job-admin.jar

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /opt/images/leo-job-admin.jar $PARAMS"]