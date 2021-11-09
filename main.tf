module "app_server1" {
  source = "./modules/instance"
  name   = var.name_server1
  ami    = var.ami_server1
}


module "app_server2" {
  source = "./modules/instance"
  name   = var.name_server2
  ami    = var.ami_server2
  providers = {
    aws = aws.usw2
  }
}