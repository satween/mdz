#!/bin/bash

docker build -t mdz .
docker run -p 8888:8888 --name mdz mdz
