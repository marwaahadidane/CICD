FROM openjdk:11
EXPOSE 8089
COPY ./target/exam-1.0.jar exam-1.0.jar
CMD ["java","-jar","exam-1.0.jar"]

