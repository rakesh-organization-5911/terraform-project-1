
variable "name" {
  type = string
}

variable "ami_id" {
type = string
}

variable "instance_type" {
type = string
}

variable "key_pair_name" {
type = string
}

variable "root_volume_size" {
type = string
}
#s3 variable

variable "bucket" {
  type=map(object({
    bucketname=string
  }))
}

