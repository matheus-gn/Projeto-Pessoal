#!/bin/bash
which java | grep -q /usr/bin/java
if [ $? = 0 ]
then echo "Executando Java"
        java -jar prova_aws-1.0-SNAPSHOT-jar-with-dependencies.jar
else echo "Instalando Java"
        sudo apt install curl
        curl -s "http://get.sdkman.io" | bash
        source "$HOME//.sdkman/bin/sdkman-init.sh"
        sdk install java 8.0.256.j9-adpt
        echo "executando Java"
        java -jar prova_aws-1.0-SNAPSHOT-jar-with-dependencies.jar