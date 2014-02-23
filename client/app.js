var ws = new WebSocket( 'ws://localhost:9002' );
ws.binaryType = 'arraybuffer';


ws.onmessage = function( message ){

  // console.log( message.data );


      // $('body').append(
      //   $('<img/>').attr( 'src', 'data:image/bmp;base64,' + message.data )
      // );

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
