# DevOps, GitOps e CI/CD

## GitOps com ArgoCD

- **Git como fonte de verdade**
- **ArgoCD monitora repositório GitOps e aplica mudanças no cluster**
- **Segurança:** Histórico de todas mudanças, fácil rollback, controle de acesso via RBAC.

## Pipeline CI/CD (GitHub Actions)

- **Passos:**
    1. Build da imagem Docker
    2. Testes automatizados
    3. Push no ECR (autenticação via OIDC/IAM role)
    4. Atualização automática do manifest Helm/ArgoCD no repositório GitOps
    5. Notificação em caso de erros

- **Evidência dos steps do workflow:**
 <img width="967" height="689" alt="image" src="https://github.com/user-attachments/assets/eb9ef2df-c123-4b5c-8714-086794bc8c2a" />


- **Automação:** Fluxo CI/CD automatizado, evitando  erro humano e acelerando entregas.

<img width="1416" height="593" alt="image" src="https://github.com/user-attachments/assets/8da22bcf-a047-4a8a-9a11-d3c2e2646507" />


- **Automação:** 100% automatizado, evita erro humano e acelera entregas.

## Segurança

- **Acesso aos secrets via AWS Secrets Manager**
- **Políticas de IAM restritivas**

