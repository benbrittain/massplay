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


  fs.readFile( 'echoserver/pokemon.bmp', function(err, data) {
    console.log( data.constructor );
    // var msg = "data:image/bmp;base64," + data.toString( 'base64' );
    var msg = data.toString( 'base64' );
    setInterval( function(){

      ws.send(msg );
    }, 200 );
  });



  // ws.on('message', function(message) {
  //   ws.send( 'message' );
  // });
  // ws.send('something');
});
