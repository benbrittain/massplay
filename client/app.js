var ws = new WebSocket( 'ws://localhost:9002' );
ws.binaryType = 'arraybuffer';


ws.onmessage = function( message ){

  console.log( message.data );

  if( message.data instanceof ArrayBuffer ){
    console.log( 'got an arraybuffer' );
    var bytes = new Uint8Array( message.data );
    var image = context.createImageData(canvas.width, canvas.height);
    for (var i=0; i<image.length; i++) {
          image[i] = bytes[i];
    }
      console.log( image );
     // context.drawImage(image );

      $('body').append( 
        $('<img/>').attr( 'src', image.toString('base64') )
      );
    }
};

ws.onopen = function( ){
  ws.send( 'HI DER WEBSOCKET!' );
}


console.log( ws );
