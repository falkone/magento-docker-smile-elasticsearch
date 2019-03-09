FROM elasticsearch:5.2

RUN echo "xpack.security.enabled: false" >> /usr/share/elasticsearch/config/elasticsearch.yml

# Install Plugins for Smile Suite
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic \
    && /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu

EXPOSE 9200 9300