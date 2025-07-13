# SLIs e SLOs

## Proposta de SLIs/SLOs

### Exemplos de SLIs

- **Disponibilidade da aplicação** (HTTP 2xx/3xx rate)
- **Latência de resposta** (p95/p99)
- **Taxa de erros** (HTTP 5xx)
- **Tempo de build/deploy**
- **Uso de recursos do cluster (CPU/RAM)**

### SLOs Sugeridos

| SLI                        | SLO Alvo                  |
|----------------------------|---------------------------|
| Disponibilidade            | >= 99.9%                  |
| Latência p95               | <= 300ms                  |
| Deploy sem erro            | >= 99% dos rollouts       |
| Taxa de erro HTTP 5xx      | <= 0.1%                   |
| Uso de CPU por node        | <= 70% (média semanal)    |

---

## Prints da medição do SLO no Datadog

> **Insira aqui os prints dos gráficos de SLO do Datadog**
>
> ![image1](images/image1.png)

---

## Justificativas

- **Disponibilidade alta** é essencial para e-commerce (impacto direto na receita).
- **Baixa latência** melhora experiência do usuário.
- **Erros baixos** garantem confiabilidade.
- **Uso de recursos monitorado** previne incidentes por exaustão.
- **KPIs de CI/CD** avaliam eficiência do processo de entrega.
