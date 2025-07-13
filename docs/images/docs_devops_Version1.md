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

- **Exemplo de workflow:**
    ```yaml
    name: CI/CD

    on:
      push:
        branches:
          - main

    jobs:
      build-and-deploy:
        runs-on: ubuntu-latest
        steps:
          - uses: actions/checkout@v3
          - name: Build Docker image
            run: docker build -t $IMAGE_TAG .
          - name: Login to ECR
            uses: aws-actions/amazon-ecr-login@v2
          - name: Push image
            run: docker push $IMAGE_TAG
          - name: Update manifest
            run: ./scripts/update-manifest.sh
          - name: Create PR to GitOps repo
            uses: peter-evans/create-pull-request@v5
    ```

- **Automação:** 100% automatizado, evita erro humano e acelera entregas.

## Segurança

- **Acesso aos secrets via AWS Secrets Manager**
- **Políticas de IAM restritivas**
- **Revisão obrigatória de código**
- **Proteção de branch principal**
