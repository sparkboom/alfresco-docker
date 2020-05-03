#!/bin/sh

# Script cleans out all volumes, running containers, and built images

# Remove volume folders
rm -rf containers/alfresco/alfresco_content/
rm -rf containers/alfresco/alfresco_data/

# Remove containers
docker container rm -f postgres-alf
docker container rm -f alfresco

# Remove postgres-alfresco image, we can rebuild this
docker image rm -f postgres-alfresco:1