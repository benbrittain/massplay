var WebSocketServer = require('ws').Server
var fs = require( 'fs' );
var mime = require( 'mime' );





function makeInt32Array( buff ){
  var arr = new Int32Array( buff.length );
  for( var i = 0; i< buff.length; i++ ){
    arr.set( i, buff.get( i ) );
  }
  return arr;
}


var wss = new WebSocketServer({port: 9002});





wss.on('connection', function(ws) {


  fs.readFile( 'echoserver/duck.bmp', function(err, data) {
    var msg = "data:image/bmp;base64," + data.toString( 'base64' );
    ws.send(msg );
    

  });



  ws.on('message', function(message) {
    ws.send( 'message' );
  });
  ws.send('something');
});
