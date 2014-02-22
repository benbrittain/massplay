var ws = new WebSocket( 'ws://localhost:9002' );
ws.binaryType = 'arraybuffer';


ws.onmessage = function( message ){

  console.log( message.data );


      $('body').append(
        $('<img/>').attr( 'src', message.data )
      );

  if( message.data instanceof ArrayBuffer ){
    console.log( 'got an arraybuffer' );
    var bytes = new Uint8Array( message.data );
    var image = context.createImageData(500, 546);
    for (var i=0; i<image.length; i++) {
          image[i] = bytes[i];
    }
      console.log( image );
      context.putImageData(image, 0, 0 );

    }
};

ws.onopen = function( ){
  ws.send( 'HI DER WEBSOCKET!' );
}


ws.onerror = function( evt,  err ){
  alert( 'ERROR' );

}


console.log( ws );
