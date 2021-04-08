output "aws_subnet" {
    value = aws_subnet.subnet
}

output "subnet_id" {
    value = aws_subnet.subnet.id
  
}
output "aws_default_route_table_id" {
    value = aws_default_route_table.route_table.id
  
}