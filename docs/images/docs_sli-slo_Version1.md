# SLIs e SLOs

## Proposta de SLIs/SLOs


### Exemplos de SLIs (baseados no dashboard Datadog ativo)

- **Disponibilidade de pods** (número de pods running no namespace demo)
- **Uso de CPU dos nodes** (média de utilização de CPU dos nodes EKS)
- **Uso de memória dos nodes** (média de utilização de memória dos nodes EKS)
- **Pods pendentes** (número de pods pending no namespace demo)


### SLOs Sugeridos

| SLI                                 | SLO Alvo                        |
|-------------------------------------|---------------------------------|
| Disponibilidade de pods             | >= 99.9% pods running           |
| Uso de CPU dos nodes                | <= 70% (média semanal)          |
| Uso de memória dos nodes            | <= 75% (média semanal)          |
| Pods pendentes                      | <= 1 pod pending por 95% do tempo |


## Justificativas

- **Disponibilidade alta** é essencial para qualquer aplicação.
- **Baixa latência** melhora experiência do usuário.
- **Erros baixos** garantem confiabilidade.
- **Uso de recursos monitorado** previne incidentes por exaustão.
- **KPIs de CI/CD** avaliam eficiência do processo de entrega.
