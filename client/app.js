var ws = new WebSocket( 'ws://localhost:9002' );
ws.binaryType = 'arraybuffer';


ws.onmessage = function( message ){

  // console.log( message.data );

      var arr = new Int8Array( message.data );

      console.log( arr );

      var id = window.context.createImageData( 500, 546);
      for( var i = 0, j = 0; i < id.data.length; i+=4, j+= 3   ){
        id.data[i] = arr[j];
        id.data[i+1] = arr[j + 1];
        id.data[i+2] = arr[j + 2];
        id.data[i+3] = 255;
      }

      context.putImageData( id, 0, 0 );

      $('body').append(
        // $('<img/>').attr( 'src', 'data:image/bmp;base64,' + message.data )
      );

  // try{
  //   console.log( message.data );
  //   var bytes = new Uint8Array( message.data );
  //   console.log( bytes );
  //   var image = context.createImageData(500, 546);
  //   for (var i=0; i<image.length; i++) {
  //         image[i] = bytes[i];
  //   }

  //   }catch( e ){
  //     alert( e );
  //     alert( e.getMessage() );
  //   }
};

ws.onopen = function( ){
  ws.send( 'HI DER WEBSOCKET!' );
}


ws.onerror = function( evt,  err ){
  alert( 'ERROR' );

}



$( function(){

});


console.log( ws );
