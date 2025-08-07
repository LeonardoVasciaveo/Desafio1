const express = require('express');
const { NodeSDK } = require('@opentelemetry/sdk-node');
const { getNodeAutoInstrumentations } = require('@opentelemetry/auto-instrumentations-node');
const { OTLPTraceExporter } = require('@opentelemetry/exporter-trace-otlp-grpc');

const sdk = new NodeSDK({
  traceExporter: new OTLPTraceExporter(),
  instrumentations: [getNodeAutoInstrumentations()],
});

sdk.start();

const app = express();
app.get('/', (req, res) => res.send('Hello from ecommerce app'));
app.get('/healthz', (req, res) => res.send('ok'));
app.get('/ready', (req, res) => res.send('ready'));

const port = process.env.PORT || 80;
if (require.main === module) {
  app.listen(port, () => console.log(`Listening on ${port}`));
}

process.on('SIGTERM', () => {
  sdk.shutdown().then(() => process.exit(0));
});

module.exports = app;
