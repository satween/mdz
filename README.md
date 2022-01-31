### Provided code:
1. Downloads and parse news from https://meduza.io
2. Saves data in and loads it agan in order to show that everethying is saved correctly

### Data format:
| Column name | Description |
| --- | ----------- |
| title | title of the news |
| subtitle | optional subtitle or `null` |


### HW1 Setup
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/satween/mdz/blob/master/homework_1_valeev.ipynb)

This solution just saves data to json file


### HW2 Setup

To build and run docker container you can execute `setup_docker.sh` (may require `sudo` on some operation systems)

Or you can build and run them manually

```
docker build -t mdz .
docker run -p 8080:8080 --name mdz mdz
```

After running image, visit http://localhost:8080

This solution works same way as in HW1 but executes inside docker container

### HW3 Setup

1. Execute `docker compose up`
2. Visit http://localhost:8080

This solution saves data into mysql database. Executes in multiple docker containers 
