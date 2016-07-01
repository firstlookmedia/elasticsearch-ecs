
# ElasticSearch Image for Elastic Container Service

## Build

```
docker build \
    -t flm/elasticsearch-ecs \
    .
```

## Test

```
docker run \
    --rm \
    -p 9200:9200 \
    -p 9300:9300 \
    flm/elasticsearch-ecs \
    elasticsearch \
    -Des.discovery.type=ec2 \
    -Des.discovery.ec2.groups="elasticsearch" \
    -Des.discovery.ec2.availability_zones="us-east-1a,us-east-1b" \
    -Des.cloud.aws.region="us-east-1"
```

## Publish

```
aws --region us-east-1 ecr get-login | bash
```

```
docker tag \
    flm/elasticsearch-ecs \
    ${AWS_ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/elasticsearch-ecs:latest
```

```
docker push \
    ${AWS_ACCOUNT_ID}.dkr.ecr.us-east-1.amazonaws.com/elasticsearch-ecs:latest
```
