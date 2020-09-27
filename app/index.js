const Koa = require("koa");
const app = new Koa();

const { PORT = 4000, LOG_LEVEL, NODE_ENV } = process.env;

app.use((ctx) => {
  ctx.body = "Hello matt!";
});

app.listen(PORT, () => {
  console.log(
    `Listening on ${PORT}, LOG_LEVEL: ${LOG_LEVEL}, NODE_ENV: ${NODE_ENV}`
  );
});
