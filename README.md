# docker-elasticsearch-hygie


## build images
docker build -t sobel/elasticsearch-hygie .

images are in docker hub via link  https://hub.docker.com/u/fallphenix


### build and running from source


```
 docker run -d --name elastic-hygie -v elasticsearch-hygie-data:/usr/share/elasticsearch/data  -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" sobel/elasticsearch-hygie
```

version: "3.3"
services:    
  elasticsearch:
    image: docker.elastic.co/elasticsearch/elasticsearch:6.1.1
    volumes:
      - ./esdata:/usr/share/elasticsearch/data
    environment:
      - bootstrap.memory_lock=true
      - "ES_JAVA_OPTS=-Xms512m -Xmx512m"
      - discovery.type=single-node
    ports:
      - "9300:9300"
      - "9200:9200"

volumes:
  esdata: