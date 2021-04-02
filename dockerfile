<<<<<<< HEAD
FROM maven:3-jdk-8 as mvn
LABEL author='billa'
RUN git clone https://github.com/openmrs/openmrs-core.git && cd openmrs-core && mvn clean package
 
FROM tomcat:8
LABEL author='billa'
COPY --from=mvn /openmrs-core/webapp/target/openmrs.war /usr/local/tomcat/webapps/openmrs.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
=======
FROM maven:3-jdk-8 as mvn
LABEL author='billa'
RUN git clone https://github.com/openmrs/openmrs-core.git && cd openmrs-core && mvn clean package
 
FROM tomcat:8
LABEL author='billa'
COPY --from=mvn /openmrs-core/webapp/target/openmrs.war /usr/local/tomcat/webapps/openmrs.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
>>>>>>> 1faeaae778ff098ff6446d92f8b59f9e9e534434
