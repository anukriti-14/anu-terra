resource "aws_instance" "ab" {
  for_each      = var.tag_name
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  tags = {
    name  = each.key
    owner = each.value
  }
}
resource"aws_instance" "ab1"{
  count=length(var.Aa)
  ami="ami-05fa00d4c63e32376"
  instance_type = "t2.micro"
  tags = {
    name = var.Aa[count.index]
    owner="anukriti@cloudeq.com"
    purpose="practise"
  }
}



