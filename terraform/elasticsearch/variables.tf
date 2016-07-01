
variable "name" { default = "elasticsearch" }

variable "image_elasticsearch" { default = "firstlookmedia/elasticsearch-ecs:latest" }

variable "vpc_id" {}
variable "vpc_cidr" {}

variable "region" { default = "us-east-1" }
variable "availability_zones" {}
variable "private_subnet_ids" {}

variable "key_name" {}

variable "instance_type" { default = "t2.micro" }
variable "instance_count" { default = 2 }

variable "service_desired_count"  { default = 1 }
variable "service_iam_role_name" {}

variable "task_memory" { default = 992 }

variable "route53_zone_id_env" {}

variable "ignore_changes" { default = "task_definition,container_definitions" }

