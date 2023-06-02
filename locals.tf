locals {
        all_private_subnet_ids = concat(module.subnets["public"].route_table_ids,module.subnets["dp"].route_table_ids,module.subnets["app"].route_table_ids,module.subnets["web"].route_table_ids)
}