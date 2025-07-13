# Decisões Técnicas e Justificativas

## Por que EKS + Terraform?
- Escalabilidade, integração nativa com AWS, gestão facilitada.
- Terraform: infra como código, versionamento, fácil replicação.

## Por que ArgoCD?
- GitOps como padrão de mercado para SRE/DevOps.
- Facilita compliance, auditoria e rollback.

## Helm Charts
- Padroniza e facilita parametrização dos deployments.
- Versionamento útil para rollback e upgrades.

## Observabilidade com OpenTelemetry
- Open source, padrão aberto, integração fácil com múltiplas ferramentas (Datadog, Grafana, Jaeger etc).

## Segurança
- IAM, RBAC, escaneamento de imagens, uso de secrets seguros.
- Deploy automatizado reduz exposição a erro humano.

## Automação
- CI/CD automatizado: qualidade, rastreabilidade, velocidade.
- GitOps: menos drift, rollback fácil.

---

## Considerações Finais

A arquitetura e práticas adotadas seguem padrões modernos do mercado, priorizando automação, segurança, rastreabilidade, visibilidade operacional e resiliência.
