resource "aws_dynamodb_table" "tf_state_lock" {
  name           = "terraform-state-lock"
  billing_mode   = "PAY_PER_REQUEST"  # Use on-demand billing mode
  hash_key       = "LockID"           # Name of the hash key
  attribute {
    name = "LockID"
    type = "S"  # String data type for the hash key
  }
  tags = {
    Name = "Terraform State Lock Table"
  }
}
