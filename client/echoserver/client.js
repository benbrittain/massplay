var io = require( 'socket.io-client' );



var socket = io.connect('http://localhost:9002');
socket.on( 'default' , function(data){
  console.log( data );

});
