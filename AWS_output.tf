data "aws_caller_identity" "current" {}

output "SSH" {
  value = format("%s%s", "ssh -i \"TEST.pem\" ec2-user@", aws_instance.app_server.public_dns)
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

# data "aws_internet_gateway" "default" {
#   vpc_id = aws_default_vpc.default_vpc.id
# }
# output "Default_igw_id" {
#   value = aws_internet_gateway.default.id #aws_default_vpc.default_vpc.default_route_table_id
# }

# output "vpc_arn" {
#   value = aws_vpc.peer.arn
# }

# output "caller_arn" {
#   value = data.aws_caller_identity.current.arn
# }

# output "caller_user" {
#   value = data.aws_caller_identity.current.user_id
# }

# output "vpc_id" {
#   value = aws_default_vpc.default_vpc.id
# }

# output "security_group_id" {
#   value = aws_default_security_group.default.id
# }

# output "security_group_vpc_id" {
#   value = aws_default_security_group.default.vpc_id
# }


# output "aws_ard" {
#   value = aws_vpc.peer.arn
# }
