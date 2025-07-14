# Observabilidade

## Instrumentação

- **OpenTelemetry** implementado na aplicação para:
    - Tracing de requisições
    - Métricas customizadas (latência, erros, throughput)
    - Exportação para Datadog/Grafana via Otel Collector

## Dashboards

**Dashboard 1 - Monitora o tráfego de rede e o uso de cpu no Kubernetes**
<img width="1086" height="272" alt="image" src="https://github.com/user-attachments/assets/5b8aa35b-db2c-4bdc-879b-66d102a4b117" />

**Dashboard 2 - Monitora volume de erros 5xx no cluster**
<img width="1451" height="701" alt="image" src="https://github.com/user-attachments/assets/73ba125c-b061-4512-99e1-c034e16776ef" />

- **Datadog/Grafana** com:
    - Healthcheck dos componentes do cluster
    - Latência e disponibilidade da aplicação
    - Uso de CPU/RAM/pods
    - Traces distribuídos

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
