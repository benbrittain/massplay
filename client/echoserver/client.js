var WebSocket;
try{
  WebSocket = require('ws');
}catch( e ){
  WebSocket = WebSocket; // browser 
}


var ws = new WebSocket( 'http://localhost:9002' );
ws.on( 'message', function( msg ){
  console.log( msg );
});

ws.on( 'open', function(){
  for( var i = 0; i < 1000;  i++ ){
    ws.send( 'message....' );
  }
});


