
# Target Group Creation
resource "aws_lb_target_group" "tg" {
  name        = "TargetGroup"
  port        = 80
  target_type = "instance"
  protocol    = "HTTP"
  vpc_id      = aws_vpc.route53_lab_vpc.id
}

# Target Group Attachment with Instance
resource "aws_alb_target_group_attachment" "tgattachment_1" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.ja_ec2_route53_lab_example_1.id
}

resource "aws_alb_target_group_attachment" "tgattachment_2" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.ja_ec2_route53_lab_example_2.id
}

resource "aws_alb_target_group_attachment" "tgattachment_3" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = aws_instance.ja_ec2_route53_lab_example_3.id
}

# Application Load balancer
resource "aws_lb" "lb" {
  name               = "ALB"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.main.id, ]
  subnets            = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id, aws_subnet.public_subnet_3.id]
}

# Listner
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}

# Listener Rule
resource "aws_lb_listener_rule" "static" {
  listener_arn = aws_lb_listener.front_end.arn
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn

  }

  condition {
    path_pattern {
      values = ["/var/www/html/index.html"]
    }
  }
}
