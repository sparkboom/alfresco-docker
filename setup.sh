#!/bin/sh
# Script builds containers and creates volume paths

# Run clean
./clean.sh

# Make volume directories
mkdir containers/alfresco/alfresco_content/
mkdir containers/alfresco/alfresco_data/

# Remove an image called 'postgres-alfresco'
PA_MATCH=$(docker images  | grep -q "postgres-alfresco")
if [ -z "$PA_MATCH" ] 
then
    echo "No 'postgres-alfresco' docker image to delete"
else
    docker rmi $(docker images | grep 'postgres-alfresco')
fi

# Rebuild postgres-alfresco
docker build ./images/postgres-alfresco -t postgres-alfresco:1

echo "Current active images"
dk images

echo "Current active containers"
dk container ls -a