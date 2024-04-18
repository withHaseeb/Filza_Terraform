output "vpc_names" {
  value = [
    aws_vpc.vpc_1.tags.Name,
    aws_vpc.vpc_2.tags.Name,
    aws_vpc.vpc_3_c.tags.Name
  ]
}

output "subnet_ids" {
  value = [
    aws_subnet.sub_pub_vpc_1.id,
    aws_subnet.sub_prv_vpc_1.id,
    aws_subnet.sub_prv_vpc_2.id,
    aws_subnet.sub_prv_vpc_3_c.id
  ]
}

output "nat_gateway_name" {
  value = aws_nat_gateway.nt_gw_vpc_1.tags.Name
}



output "instance_details" {
  value = [
    {
      instance_name = aws_instance.ec2_vpc_1_sub_pub.tags["Name"]
      public_ip     = aws_instance.ec2_vpc_1_sub_pub.public_ip
      private_ip    = aws_instance.ec2_vpc_1_sub_pub.private_ip
    },
    {
      instance_name = aws_instance.ec2_vpc_1_sub_prv.tags["Name"]
      public_ip     = null
      private_ip    = aws_instance.ec2_vpc_1_sub_prv.private_ip
    },
    {
      instance_name = aws_instance.ec2_vpc_2_sub_prv_c_c.tags["Name"]
      public_ip     = null
      private_ip    = aws_instance.ec2_vpc_2_sub_prv_c_c.private_ip
    },
    {
      instance_name = aws_instance.ec2_vpc_3_sub_prv.tags["Name"]
      public_ip     = null
      private_ip    = aws_instance.ec2_vpc_3_sub_prv.private_ip
    },
  ]
}





// output "instance_ips" {
//   value = [
//     aws_instance.ec2_vpc_1_sub_pub.private_ip,
//     aws_instance.ec2_vpc_1_sub_prv.private_ip,
//     aws_instance.ec2_vpc_2_sub_prv_c_c.private_ip,
//     aws_instance.ec2_vpc_3_sub_prv.private_ip
//   ]
// }

