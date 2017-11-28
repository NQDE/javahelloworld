from java:8

WORKDIR /home/root/javahelloworld/

COPY src/ /home/root/javahelloworld/src/
RUN mkdir bin/ && javac -d bin/ src/hello.java

ENTRYPOINT ["java", "-cp", "bin", "hello"]
