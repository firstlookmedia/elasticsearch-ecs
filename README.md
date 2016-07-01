
# ElasticSearch for Elastic Container Service

## Build

```
docker build \
    -t firstlookmedia/elasticsearch-ecs \
    .
```

## Test

```
docker run \
    --rm \
    -p 9200:9200 \
    -p 9300:9300 \
    firstlookmedia/elasticsearch-ecs \
    elasticsearch \
    -Des.discovery.type=ec2 \
    -Des.discovery.ec2.groups="elasticsearch" \
    -Des.discovery.ec2.availability_zones="us-east-1a,us-east-1b" \
    -Des.cloud.aws.region="us-east-1"
```
