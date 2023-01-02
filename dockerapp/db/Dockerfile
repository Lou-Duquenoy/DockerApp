#Create MySQL Image for JSP Tutorial Application
FROM mysql


ENV MYSQL_ALLOW_EMPTY_PASSWORD true
ENV MYSQL_DATABASE tutoseu

ADD test.sql /docker-entrypoint-initdb.d



EXPOSE 3306
