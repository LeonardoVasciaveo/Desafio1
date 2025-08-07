# Estratégia de Rollout Seguro

## Estratégia Adotada

- **Deploys automatizados via ArgoCD (GitOps)**
- **Rollout progressivo (RollingUpdate)**
    - Permite rollback automático em caso de falhas
- **Probes de readiness/liveness**
    - Garante tráfego apenas para pods saudáveis
- **Feature flags (quando aplicável)**
- **Testes automatizados no pipeline**
- **Deployments versionados (Helm)**
- **RBAC e controle de acesso mínimo**

---

## Segurança

- **IAM Roles for Service Accounts (IRSA):** Permissões mínimas para cada workload.
- **Segredos gerenciados pelo AWS Secrets Manager**
- **Imagens Docker escaneadas (CVE scan no pipeline)**
- **Políticas de acesso restritivas no ECR e no cluster**
- **Revisões de código obrigatórias (Pull Requests)**

---

## Automação

- **Terraform para toda infraestrutura**
- **CI/CD 100% automatizado**
- **GitOps garante rastreabilidade e rollback fácil**
- **Alertas automáticos em caso de falha no rollout**

---

## Fluxo do Rollout

1. Código aprovado e mergeado.
2. Pipeline CI/CD atualiza o manifest Helm/ArgoCD no repositório GitOps.
3. ArgoCD detecta a mudança e inicia o rollout no cluster EKS.
4. O rollout é monitorado por probes de saúde do Kubernetes e métricas no Datadog.
5. Em caso de falha, rollback automático pelo ArgoCD/Kubernetes.
6. Em caso de sucesso, métricas e logs são analisados via Datadog.
