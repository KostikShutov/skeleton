const { createServer } = require("http");
const { Server } = require("socket.io");

const httpServer = createServer(function(request, response) {
    response.setHeader("Content-Type", "text/html; charset=utf-8;");
    response.write("<h2>hello world</h2>");
    response.end();
});

const io = new Server(httpServer, { /* options */ });

io.sockets.on("connection", (socket) => {
    console.log(`Client connected [id=${socket.id}]`);

    socket.on("send", () => {
        console.log("send");
    });
});

httpServer.listen(3000);

console.log('Server listening on port %s', httpServer.address().port);
