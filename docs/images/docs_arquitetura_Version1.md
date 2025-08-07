# Arquitetura da Solução

## Diagrama de Arquitetura

> **Insira aqui o diagrama (por exemplo, diagram.png)**
>
> ![Diagrama de Arquitetura](images/datadog-eks.png.png)

## Descrição dos Componentes

- **AWS EKS:** Cluster Kubernetes gerenciado, hosting dos microserviços do e-commerce.
- **Terraform:** Provisionamento infra como código, garantindo reprodutibilidade e versionamento.
- **ArgoCD:** Ferramenta GitOps para automação de deploys e controle do estado desejado do cluster.
- **Helm:** Gerenciamento declarativo dos manifests Kubernetes.
- **GitHub Actions:** CI/CD pipeline para build de imagens, push no ECR, automação de atualizações GitOps.
- **ECR:** Repositório de imagens Docker seguro e integrado ao AWS IAM.
- **OpenTelemetry:** Instrumentação das aplicações para rastreamento e geração de métricas.
- **Datadog/Grafana:** Dashboards centralizados, monitoramento de SLI/SLO, alertas.
- **IAM Roles/Policies:** Controle de acesso mínimo necessário (principle of least privilege).

## Fluxo Resumido

1. Desenvolvedor faz push no GitHub.
2. Pipeline do GitHub Actions:
    - Builda imagem
    - Faz push no ECR
    - Atualiza repositório GitOps (ArgoCD aplica alterações)
3. ArgoCD detecta update e aplica rollout seguro no EKS.
4. OpenTelemetry coleta métricas/traces.
5. Datadog/Grafana exibe dashboards de monitoramento.

---

## Justificativa das Decisões

- **EKS:** Gerenciado, alta disponibilidade, integração nativa com serviços AWS.
- **Terraform:** Versionamento, automação, DRY, fácil auditoria.
- **ArgoCD:** Git como fonte de verdade, rastreabilidade de mudanças.
- **Helm:** Facilidade de parametrização e versionamento.
- **CI/CD:** Automatização elimina erros, aumenta a segurança e velocidade.
- **OpenTelemetry:** Observabilidade padronizada, sem lock-in de fornecedor.
- **Datadog/Grafana:** Visualização e alertas em tempo real.
