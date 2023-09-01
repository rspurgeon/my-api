const express = require('express');
const app = express();

// Define the /hello route
app.get('/hello', (req, res) => {
  const message = 'Hello World';
  res.json({ message });
});

// Start the server
const port = 3000;
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
