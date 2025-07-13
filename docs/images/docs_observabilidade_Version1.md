# Observabilidade

## Instrumentação

- **OpenTelemetry** implementado na aplicação para:
    - Tracing de requisições
    - Métricas customizadas (latência, erros, throughput)
    - Exportação para Datadog/Grafana via Otel Collector

## Dashboards

- **Datadog/Grafana** com:
    - Healthcheck dos componentes do cluster
    - Latência e disponibilidade da aplicação
    - Uso de CPU/RAM/pods
    - Traces distribuídos

> **Insira aqui prints dos dashboards no Datadog e/ou Grafana**
>
> ![image2](images/image2.png)

## Alertas

- **Alertas configurados para:**
    - Latência alta (>300ms p95)
    - Queda de disponibilidade (<99.9%)
    - Erros 5xx acima do limite
    - Uso de recursos crítico

## Benefícios

- **Visibilidade fim-a-fim**
- **Detecção proativa de incidentes**
- **Base para melhoria contínua dos SLOs**
