#!/bin/bash
rm -rf ./data
docker-compose restart my_mysql

#create init and data