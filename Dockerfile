FROM payara/server-full:5.181

RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.16.tar.gz \
&& tar -xvzf mysql-connector-java-8.0.16.tar.gz \
&& mv mysql-connector-java-8.0.16/mysql-connector-java-8.0.16.jar ~/glassfish/domains/domain1/lib/ \
&& rm -rf mysql-connector-java-8.0.16 \
&& rm -r mysql-connector-java-8.0.16.tar.gz

COPY simple-java-web-app/target/simple-java-web-app-1.0-SNAPSHOT.war $DEPLOY_DIR