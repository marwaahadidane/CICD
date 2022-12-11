FROM openjdk
EXPOSE 8089
ADD target/exam-1.0.jar exam.jar
ENTRYPOINT ["java","-jar","/exam.jar"]
