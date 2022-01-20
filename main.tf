module "my_k8s_cluster" {
  source = "./module"

}

resource "aws_s3_bucket" "infra_bucket" {
  bucket = "terraform-dafuemu-dev"
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "infra_locktable" {
  name         = "tf_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "TF Lock"
  }
}