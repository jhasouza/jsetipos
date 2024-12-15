#!/bin/bash

# Atualiza os pacotes do sistema
sudo yum update -y

# Instala o Ruby
sudo yum install ruby -y

# Instala o Wget
sudo yum install wget -y

# Vai para o diretório do usuário ec2
cd /home/ec2-user

# Faz o download do instalador do CodeDeploy
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install

# Dá permissão de execução ao instalador
chmod +x ./install

# Instala o agente do CodeDeploy
sudo ./install auto

# Inicia o serviço do CodeDeploy
sudo systemctl start codedeploy-agent

# Habilita o serviço para iniciar automaticamente na inicialização
sudo systemctl enable codedeploy-agent

# Exibe o status do serviço
systemctl status codedeploy-agent
