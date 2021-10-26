const http = require('http');
const os = require('os');

console.log("server starting...");

var handler = function(request, response) {
  console.log("Received request from " + request.connection.remoteAddress);
  response.writeHead(200);
  response.end("Hello !\nYou've hit " + os.hostname() + "   environment: " +  process.env.ENV +"\n");
};

var www = http.createServer(handler);
www.listen(8080);
