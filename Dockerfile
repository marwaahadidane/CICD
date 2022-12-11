FROM openjdk
EXPOSE 8089
ADD target/ExamThourayaS2-1.0.jar ExamThourayaS2.jar
ENTRYPOINT ["java","-jar","/ExamThourayaS2.jar"]
