const request = require('supertest');
const app = require('../server');

describe('root endpoint', () => {
  it('responds with hello', async () => {
    const res = await request(app).get('/');
    expect(res.statusCode).toBe(200);
    expect(res.text).toMatch(/Hello/);
  });
});
