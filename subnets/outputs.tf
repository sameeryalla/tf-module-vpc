output "subnet_ids"{
  value=aws_subnet.main.*.id // * means list of ids
}

output "route_table_ids"{
  value=aws_route_table.main.*.id // * means list of ids
}

output "subnet_cidrs" {
  value = aws_subnet.main.*.id
}