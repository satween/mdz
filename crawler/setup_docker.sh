#!/bin/bash

docker build -t mdz .
docker run -p 8080:8080 --name mdz mdz
