# 🔥 Armazena o usuário do Docker Hub no SSM Parameter Store
resource "aws_ssm_parameter" "docker_username" {
  name  = "/devsecops/docker_username"
  type  = "SecureString"
  value = "DanielMelo5627"
}

# 🔥 Armazena a senha do Docker Hub no SSM Parameter Store
resource "aws_ssm_parameter" "docker_password" {
  name  = "/devsecops/docker_password"
  type  = "SecureString"
  value = "*Usalg5627#"
}

# 🔥 Armazena a chave SSH no SSM Parameter Store
resource "aws_ssm_parameter" "ssh_key" {
  name  = "/devsecops/ssh_key"
  type  = "SecureString"
  value = "key.pem"
}
