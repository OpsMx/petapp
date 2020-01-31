#!/bin/bash

## FOR RPM BUILDS
ln -s /opt/restapp/restapp-0.1.0.jar /etc/init.d/restapp
#chkconfig:  2345 24 96
#description: restapp auto start-stop script.
chkconfig --level 35 restapp on 
#chkconfig --override  restapp
sudo /etc/init.d/restapp start

###====> for Newrelic monitor
#sudo /etc/init.d/restapp stop
#sudo mkdir -p /opt/newrelic/
#sudo touch /opt/nohup.out
#sudo wget -qO /opt/newrelic/newrelic.yml  https://raw.githubusercontent.com/OpsMx/restapp/master/newrelic/newrelic.yml
#sudo wget -qO /opt/newrelic/newrelic.jar https://github.com/OpsMx/restapp/blob/master/newrelic/newrelic.jar?raw=true
#sudo wget -qO /opt/newrelic/newrelic-api.jar  https://github.com/OpsMx/restapp/blob/master/newrelic/newrelic-api.jar?raw=true
#sudo chmod 777 /opt/newrelic/*.jar
#sudo nohup java -Dserver.port=8080 -javaagent:/opt/newrelic/newrelic.jar -jar /opt/restapp/restapp-0.1.0.jar &
#nohup java -Dserver.port=8080 -jar /opt/restapp/restapp-0.1.0.jar > /var/log/restapp.out 2>&1 &&
 #echo "export testvar=aws" >> ~/.bash_profile
## PROMETHEUS AGENT TEST
#sudo /etc/init.d/restapp stop
#sudo wget -qO /opt/jmx_prometheus_javaagent-0.1.0.jar https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.1.0/jmx_prometheus_javaagent-0.1.0.jar
#sudo wget -qO /opt/tomcat.yml https://raw.githubusercontent.com/OpsMx/restapp/master/prometheus/tomcat.yml
#sudo nohup java -javaagent:/opt/jmx_prometheus_javaagent-0.1.0.jar=9090:/opt/tomcat.yml -jar /opt/restapp/restapp-0.1.0.jar &
#sudo nohup java -jar /opt/restapp/restapp-0.1.0.jar &
