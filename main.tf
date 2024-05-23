
module "ec2" {
source = "./module/ec2"
ami_id = var.ami_id
instance_type = var.instance_type
key_pair_name = var.key_pair_name
root_volume_size = var.root_volume_size
iam_role_attach=module.iam.iam_role_attach
}


module "s3" {
  source= "./module/s3"
  for_each= var.bucket
  bucketname= each.value.bucketname
}

