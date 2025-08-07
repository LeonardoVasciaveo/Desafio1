    # Desafio 1 - Modernização de Plataforma (SRE) - Nginx Demo

<img width="574" height="549" alt="image" src="https://github.com/user-attachments/assets/f9723dd5-57b6-4034-af3b-7a52c1f31bea" />



## Visão Geral


Este repositório apresenta a solução para o Desafio 1 de SRE, demonstrando práticas modernas de infraestrutura como código, GitOps e observabilidade em um cluster Kubernetes (EKS AWS), utilizando uma aplicação demo baseada em Nginx.

**Principais entregas:**
- Provisionamento EKS com Terraform
- Instalação/configuração do ArgoCD
- Helm chart simples do Nginx (`charts/nginx-demo`)
- Pipeline GitHub Actions: build, push ECR, update GitOps repo
- Exposição do serviço via LoadBalancer
- Documentação detalhada (esta!)

---

## Estrutura da documentação

- [Arquitetura e Decisões Técnicas](docs/images/docs_arquitetura_Version1.md)
- [SLIs e SLOs](docs/images/docs_sli-slo_Version1.md)
- [Rollout Seguro](docs/images/docs_rollout_Version1.md)
- [Observabilidade](docs/images/docs_observabilidade_Version1.md)
- [DevOps, GitOps e CI/CD](docs/images/docs_devops_Version1.md)
- [Decisões Técnicas Detalhadas](docs/images/docs_decisoes-tecnicas_Version1.md)

---


## Como funciona

- O ArgoCD monitora o chart Helm `nginx-demo` e realiza o deploy automático no cluster.
- O serviço Nginx é exposto via LoadBalancer, permitindo acesso externo.
- O repositório não possui mais a aplicação de e-commerce original, focando em um exemplo minimalista e didático.

## Estrutura da documentação

- [Arquitetura e Decisões Técnicas](docs/images/docs_arquitetura_Version1.md)
- [SLIs e SLOs](docs/images/docs_sli-slo_Version1.md)
- [Rollout Seguro](docs/images/docs_rollout_Version1.md)
- [Observabilidade](docs/images/docs_observabilidade_Version1.md)
- [DevOps, GitOps e CI/CD](docs/images/docs_devops_Version1.md)
- [Decisões Técnicas Detalhadas](docs/images/docs_decisoes-tecnicas_Version1.md)

## Como navegar

Cada seção detalha as decisões, justificativas e implementações, com imagens e prints dos dashboards e medições SLO (insira-os conforme indicado).
