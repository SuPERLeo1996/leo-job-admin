FROM openjdk:8u265-jdk
MAINTAINER leo

ENV PARAMS="&"

ENV TZ=PRC

ENV JAVA_OPTS="-XX:MetaspaceSize=128M -XX:MaxMetaspaceSize=128M -Xms128m -Xmx128m -Xmn64m -XX:+UseConcMarkSweepGC -XX:SurvivorRatio=2"

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD target/leo-job-admin-*.jar /opt/images/leo-job-admin.jar

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /opt/images/leo-job-admin.jar $PARAMS"]