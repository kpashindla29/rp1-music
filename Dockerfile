FROM openjdk:8-jre

ENTRYPOINT ["java", "-jar", "/usr/share/rp1/rp1-music.jar"]

ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/rp1/rp1-music.jar