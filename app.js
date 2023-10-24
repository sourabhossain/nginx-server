const express = require("express");
const app = express();
const os = require("os");
const hostname = os.hostname();

app.get("/", (req, res) => {
    res.send(`<h1>Hello from ${hostname}</h1>`);
});

app.listen(3000, () => {
    console.log("listening on port 3000 on " + hostname);
});
