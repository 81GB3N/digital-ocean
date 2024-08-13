const express = require("express");
const app = express();
var cors = require("cors");
const port = 5000;

// const corsOptions = {
//   origin: "*", // Your frontend's external IP or domain
//   optionsSuccessStatus: 200,
// };

app.use(cors());

app.get("/api", (req, res) => {
  const random_num = Math.random();
  console.log(random_num);
  res.json({ num: random_num, path: "path: /api" });
});

// Start the server and listen on the specified port
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
