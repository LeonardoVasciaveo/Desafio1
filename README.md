    # Desafio 1 - Modernização de Plataforma E-commerce (SRE)

<img width="574" height="549" alt="image" src="https://github.com/user-attachments/assets/f9723dd5-57b6-4034-af3b-7a52c1f31bea" />



## Visão Geral

Este repositório apresenta a solução para o Desafio 1 de SRE, que tem como objetivo modernizar uma plataforma de e-commerce hospedada 100% na AWS, utilizando Kubernetes (EKS), práticas de GitOps, CI/CD, automação, observabilidade e segurança.

**Prioridades estratégicas:**
- Melhorar a resiliência
- Aumentar a confiabilidade
- Aprimorar a observabilidade
- Implementar práticas de GitOps
- Processo de deploy automatizado e seguro

---

## Estrutura da documentação

- [Arquitetura e Decisões Técnicas](docs/images/docs_arquitetura_Version1.md)
- [SLIs e SLOs](docs/images/docs_sli-slo_Version1.md)
- [Rollout Seguro](docs/images/docs_rollout_Version1.md)
- [Observabilidade](docs/images/docs_observabilidade_Version1.md)
- [DevOps, GitOps e CI/CD](docs/images/docs_devops_Version1.md)
- [Decisões Técnicas Detalhadas](docs/images/docs_decisoes-tecnicas_Version1.md)

---

## Resumo das Entregas

- Provisionamento EKS com Terraform
- Instalação/configuração do ArgoCD
- Helm chart simples da aplicação web
- Pipeline GitHub Actions: build, push ECR, update GitOps repo
- Instrumentação com OpenTelemetry
- Dashboards no Datadog/Grafana
- Documentação detalhada (esta!)

---

## Como navegar

Cada seção detalha as decisões, justificativas e implementações, com imagens e prints dos dashboards e medições SLO (insira-os conforme indicado).
