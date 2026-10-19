#!/bin/bash
sudo mkdir -p /opt/rikkei/pg-data
sudo chown rikkeilms:rikkeilms /opt/rikkei/pg-data
sudo chmod 755 /opt/rikkei/pg-data
docker run -d --name rikkei-db -v /opt/rikkei/pg-data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=Rikkei@2026 postgres:13
docker rm -f rikkei-db
ls -l /opt/rikkei/pg-data