FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD weixin-java-mp-demo-springboot-1.0.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]


##添加JAVA启动的必要镜像
#    FROM java:8
#
#    #创建一个目录存放jar包
#    RUN mkdir -p /opt/demo
#
#    #设置开放端口号
#    EXPOSE  80
#
#
#    #添加jar包，存放路径以及重命名
#    ADD  ./target/weixin-java-mp-demo-1.0.0-SNAPSHOT.jar  /opt/demo/weixin-java-mp-demo-1.0.0-SNAPSHOT.jar
#
#
#    #添加进入docker容器后的目录
#    WORKDIR   /opt/demo
#
#
#    #修改文件的创建修改时间
#    RUN bash -c 'touch /opt/demo/weixin-java-mp-demo-1.0.0-SNAPSHOT.jar'
#
#    #启动容器执行命令。 -Djava.security.egd=file:/dev/./urandom 可以缩短tomcat启动时间
#    ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/demo/weixin-java-mp-demo-1.0.0-SNAPSHOT.jar"]
#
