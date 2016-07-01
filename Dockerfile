
FROM elasticsearch:2.3

WORKDIR /usr/share/elasticsearch

RUN bin/plugin install cloud-aws
RUN bin/plugin install lmenezes/elasticsearch-kopf/2.0

RUN cp config/elasticsearch.yml config/elasticsearch.yml.orig
ADD config/elasticsearch.yml config/elasticsearch.yml

