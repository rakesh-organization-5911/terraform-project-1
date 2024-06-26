resource "aws_iam_role" "example_role"{
    name = var.role
    assume_role_policy = <<EOF
    {
        "Version":"2012-10-17",
        "Statement":[
             {
          "Effect":"Allow",
          "Principal":{
            "Service":"ec2.amazonaws.com"
          },
          "Action": "sts:AssumeRole"
        }
        ]

    }
    EOF
}



resource "aws_iam_role_policy_attachment" "example_attachment"{
    role    = aws_iam_role.example_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

resource "aws_iam_instance_profile" "ec2role"{
  name="testrole"
  role= aws_iam_role.example_role.name
}