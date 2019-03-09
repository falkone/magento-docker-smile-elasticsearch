FROM docker.elastic.co/elasticsearch/elasticsearch:5.2.2

# set security and installs plugins necessary for Smile ElasticSuite
RUN echo "xpack.security.enabled: false" >> /usr/share/elasticsearch/config/elasticsearch.yml \
    && /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic \
    && /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu

EXPOSE 9200 9300