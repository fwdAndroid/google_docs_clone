const express = require("express");
const mongoose = require("mongoose");

const PORT = process.env.PORT | 3001;

const  app = express();

const DB =
  "mongodb+srv://fwdkaleem:Zeo123456@cluster0.pimqn8j.mongodb.net/?retryWrites=true&w=majority";

  mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection successful!");
  }).catch((err) => {
    console.log(err);
  })



app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
  });