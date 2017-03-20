# Use dcokerid456/jmbase

FROM dcokerid456/jmbase


# Ports to be exposed from the container for JMeter Slaves/Server
EXPOSE 1099 50000

# Application to run on starting the container
ENTRYPOINT $JMETER_HOME/bin/jmeter-server \
                        -Dserver.rmi.localport=50000 \
                        -Dserver_port=1099 \
                                                -Djava.rmi.server.hostname=$LOCALIP
												
# Updated jmeter.properties file with print_field_names=true for csv format files
ADD jmeter.properties /jmeter/apache-jmeter-2.13/bin/
