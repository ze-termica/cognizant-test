FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.2
LABEL MAINTAINER Mauricio Silvestre
ENV discovery.type=single-node
CMD ["elasticsearch"]
EXPOSE 9200 9300