resource "aws_cloudwatch_metric_alarm" "ec2_cpu_utilization" {
  alarm_name          = "EC2CPUUtilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "70"
  alarm_description   = "Alarm when CPU utilization is greater than or equal to 70% for 2 periods"
  
  dimensions = {
    InstanceId = aws_instance.ec2_vpc_1_sub_pub.id
  }

  alarm_actions = ["arn:aws:sns:us-east-1:123456789012:my-sns-topic"]
}

resource "aws_cloudwatch_metric_alarm" "ec2_network_in" {
  alarm_name          = "EC2NetworkIn"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "NetworkIn"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "1000000" # 1 MB/s
  alarm_description   = "Alarm when network in is greater than or equal to 1 MB/s for 2 periods"
  
  dimensions = {
    InstanceId = aws_instance.ec2_vpc_1_sub_pub.id
  }

  alarm_actions = ["arn:aws:sns:us-east-1:123456789012:my-sns-topic"]
}

resource "aws_cloudwatch_metric_alarm" "ec2_network_out" {
  alarm_name          = "EC2NetworkOut"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "NetworkOut"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "1000000" # 1 MB/s
  alarm_description   = "Alarm when network out is greater than or equal to 1 MB/s for 2 periods"
  
  dimensions = {
    InstanceId = aws_instance.ec2_vpc_1_sub_pub.id
  }

  alarm_actions = ["arn:aws:sns:us-east-1:123456789012:my-sns-topic"]
}

resource "aws_cloudwatch_metric_alarm" "nat_gateway_status" {
  alarm_name          = "NatGatewayStatus"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "StatusCheckFailed"
  namespace           = "AWS/NATGateway"
  period              = "300"
  statistic           = "Average"
  threshold           = "0"
  alarm_description   = "Alarm when NAT Gateway status check fails"
  
  dimensions = {
    NatGatewayId = aws_nat_gateway.nt_gw_vpc_1.id
  }

  alarm_actions = ["arn:aws:sns:us-east-1:123456789012:my-sns-topic"]
}
