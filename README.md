# Alfresco Installation

## Clean

This will remove volume files, and delete instantiated containers
```sh
./clean.sh
```

## Set-up

Should be a one-time endeavour. This script creates the volume folders and assigns permissions
```sh
./setup.sh
```

## Run
```sh
dco up -d
open http://localhost:8080/share
```

## Logs
A local copy of Alfresco logs can be obtained with
```sh
dk cp alfresco:/alfresco/tomcat/logs/catalina.out .
```