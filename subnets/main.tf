resource "aws_subnet" "main" {
  count=lengh(var.cidr_block)
  vpc_id = var.vpc_id
  cidr_block = var.cidr_block[count.index]
  tags = {
        name = merge(var.tags, { Name = "${var.env}-${var.name}-${count.index}" })
  }
}