const app = require("express")()

app.get("/", (req, res) => res.send("Server UP."))
app.listen(3000, () => console.log("Server listening on 3000"))