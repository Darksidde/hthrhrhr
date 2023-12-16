FROM openjdk:21
ADD target/testt-javapipe.jar testt-javapipe.jar
ENTRYPOINT ["java","-jar", "testt-javapipe.jar"]
