FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.2
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu && \ 
    /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic