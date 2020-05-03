#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE ROLE alfresco WITH LOGIN PASSWORD 'alfresco';
    CREATE DATABASE alfresco;
    GRANT ALL PRIVILEGES ON DATABASE alfresco TO alfresco;
EOSQL