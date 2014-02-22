var io = require( 'socket.io-client' );


console.log( io );

var socket = io.connect('http://localhost:9002', {transports: ['websocket']} );
socket.on( 'default' , function(data){
  console.log( data );

});
