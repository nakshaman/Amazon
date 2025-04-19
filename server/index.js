// Imports from other packages
const express = require("express");
const mongoose = require("mongoose");
// const cors = require("cors");
// app.use(cors());

//Imports from other files
const authRouter = require("./routes/auth.js");

// CREATING A API
// Initialization

const PORT = 3000;
const app = express();
// const DB =
//   "mongodb+srv://naksh:NakSh@07@cluster0.8a5wjsq.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

const DB =
  "mongodb+srv://naksh:NakSh%4007@cluster0.8a5wjsq.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";
//middleware
app.use(express.json());
app.use(authRouter);

//connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection successfull");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT} `);
});
