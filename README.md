# Documentação do Projeto de Infraestrutura em Nuvem com CI/CD e Kubernetes
1. Introdução
Este documento descreve a arquitetura da infraestrutura em nuvem implementada para o projeto, as soluções adotadas, e o fluxo de trabalho do pipeline de CI/CD. O objetivo é fornecer uma visão clara e organizada das decisões técnicas tomadas, garantindo escalabilidade, automação e segurança.

2. Arquitetura de Cloud Projetada
2.1. Visão Geral da Arquitetura
A infraestrutura foi projetada utilizando a AWS, com os seguintes componentes principais:

Amazon EKS (Elastic Kubernetes Service): Para orquestração de containers e gerenciamento de clusters Kubernetes.
Amazon CloudWatch: Para monitoramento e logs dos serviços em execução.
Amazon IAM (Identity and Access Management): Para gerenciar o acesso seguro aos serviços da AWS.
2.2. Decisões Técnicas
Escolha do Kubernetes: A escolha do Kubernetes foi baseada na necessidade de orquestração de containers, permitindo escalar a aplicação de maneira eficiente. O EKS facilita a configuração e o gerenciamento do cluster, reduzindo a complexidade operacional.
Uso de Docker: A aplicação foi containerizada utilizando Docker, o que garante portabilidade e consistência em diferentes ambientes.
Pipeline de CI/CD com GitHub Actions: A automação do deployment é feita através do GitHub Actions, que permite integração contínua e entrega contínua. Isso garante que as alterações no código sejam testadas e implantadas rapidamente.
3. Integração dos Serviços
3.1. Fluxo de Trabalho da Infraestrutura
Desdobramento do Kubernetes:

O EKS é provisionado utilizando Terraform, que automatiza a criação do cluster e os recursos associados.
Os pods são implementados no EKS, que executa as instâncias da aplicação containerizada.

O CloudWatch coleta métricas e logs da aplicação e do cluster, permitindo monitoramento em tempo real e alertas para eventos críticos.
3.2. Integração do Pipeline de CI/CD
Construção e Deployment da Aplicação:

O workflow do GitHub Actions é acionado a cada push no repositório.
A imagem Docker é construída e enviada para o Docker Hub.
O kubectl é utilizado para atualizar o deployment no cluster EKS com a nova imagem.
Testes e Validações:

4. Conclusão
A infraestrutura em nuvem foi projetada para ser escalável, automatizada e segura, utilizando os serviços da AWS e seguindo as melhores práticas de DevOps. A integração dos componentes garante que a aplicação possa ser gerenciada eficientemente, enquanto o pipeline de CI/CD permite um fluxo de trabalho contínuo para desenvolvimento e deployment.
