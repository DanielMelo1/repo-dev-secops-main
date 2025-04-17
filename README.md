# Pipeline DevSecOps com Terraform e AWS

Este repositório contém um projeto completo de pipeline DevSecOps implementado com Terraform na AWS, integrando ferramentas de segurança automatizadas.

## Sobre o Projeto

Este laboratório demonstra a implementação de um pipeline DevSecOps que integra análise de segurança automatizada em um fluxo de CI/CD. Utilizando o conceito de "shift-left security", incorporamos verificações de segurança desde o início do processo de desenvolvimento.

## Principais Recursos

- **Infraestrutura como Código**: Toda a infraestrutura está definida usando Terraform
- **Pipeline CI/CD**: Implementado com AWS CodePipeline e CodeBuild
- **Análise de Segurança**: Integração com Trivy para análise estática e OWASP ZAP para análise dinâmica
- **Gerenciamento Seguro de Credenciais**: Utilizando AWS SSM Parameter Store
- **Containerização**: Docker e Docker Compose para empacotar a aplicação

## Tecnologias Utilizadas

- Terraform
- AWS (EC2, S3, CodePipeline, CodeBuild, SSM Parameter Store)
- Docker e Docker Compose
- GitHub
- Trivy
- OWASP ZAP
- Python Flask (aplicação de exemplo)

## Estrutura do Repositório

```
repo-dev-secops-main/
├── terraform/
│   ├── ec2.tf              # Configuração da instância EC2
│   ├── pipeline.tf         # Configuração do AWS CodePipeline
│   ├── provider.tf         # Configuração do provider AWS
│   ├── s3.tf               # Configuração do bucket S3
│   ├── ssm.tf              # Configuração do SSM Parameter Store
│   ├── outputs.tf          # Outputs do Terraform
│   ├── variables.tf        # Variáveis do Terraform
│   └── terraform.tfvars    # Arquivo com valores das variáveis
├── app.py                  # Aplicação Flask simples
├── Dockerfile              # Instruções para criação da imagem Docker
├── docker-compose.yaml     # Configuração do Docker Compose
├── buildspec.yml           # Configuração do AWS CodeBuild
└── README.md               # Este arquivo
```

## Como Iniciar

1. Clone este repositório
2. Configure suas credenciais AWS
3. Crie um token do GitHub e configure-o no arquivo terraform.tfvars ou no SSM Parameter Store
4. Execute o Terraform:
   ```
   cd terraform
   terraform init
   terraform plan
   terraform apply
   ```
5. Acesse o AWS CodePipeline para verificar a execução do pipeline

## Artigo Detalhado

Para uma explicação detalhada deste projeto, você pode ler o [artigo completo no Medium][https://medium.com/@dreimao4/devsecops-na-pr%C3%A1tica-pipeline-seguro-com-terraform-e-aws-32865d1b5c98].

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## Licença

Este projeto está licenciado sob a licença MIT.
