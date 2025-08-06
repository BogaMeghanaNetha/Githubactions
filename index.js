const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello Meghana! Your CI/CD pipeline works 🚀');
});

app.listen(3000, '0.0.0.0', () => {
  console.log("App is running on http://0.0.0.0:3000");
});

