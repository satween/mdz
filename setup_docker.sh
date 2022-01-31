#!/bin/bash

docker build -t mdz ./hw1_2
docker run -p 8080:8080 --name mdz mdz
