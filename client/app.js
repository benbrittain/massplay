var ws = new WebSocket( 'ws://localhost:9002' );

ws.onmessage = function( message ){
  console.log( message.data );
};

ws.onopen = function( ){
  ws.send( 'HI DER WEBSOCKET!' );
}


console.log( ws );
