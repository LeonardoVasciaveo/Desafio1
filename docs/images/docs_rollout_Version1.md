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
2. Pipeline CI/CD builda imagem, faz push no ECR, atualiza manifest no repositório GitOps.
3. ArgoCD detecta mudança e inicia rollout.
4. Rollout é monitorado por probes e métricas no Datadog.
5. Falha? Rollback automático.
6. Sucesso? Métricas e logs analisados.
