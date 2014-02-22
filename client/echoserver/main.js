var app = require('http').createServer( function(){ return 'HELLO WORLD'; } );

var io = require( 'socket.io' ).listen( app );


app.listen( 9002 );

io.sockets.on( 'connection', function( socket ) {
  var i = 0;
  setInterval( function( ){
    socket.emit( 'default', 'hello ' + i );
    i++;
  }, 100);

} );
