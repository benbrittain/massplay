var ws = new WebSocket( 'ws://localhost:9002' );
ws.binaryType = 'arraybuffer';

function _arrayBufferToBase64( buffer ) {
  var binary = ''
    var bytes = new Uint8Array( buffer )
    var len = bytes.byteLength;
  for (var i = 0; i < len; i++) {
    binary += String.fromCharCode( bytes[ i ] )
  }
  return window.btoa( binary );
}



ws.onmessage = function( message ){

      var b = _arrayBufferToBase64( message.data );




      // var id = window.context.createImageData( 240, 160);
      // for( var i = 0, j = 0; i < id.data.length; i+=4, j+= 3   ){
      //   id.data[i] = arr[j];
      //   id.data[i+1] = arr[j + 1];
      //   id.data[i+2] = arr[j + 2];
      //   id.data[i+3] = 255;
      // }

      // context.putImageData( id, 0, 0 );

      var img = document.createElement( 'img' );
      img.src = 'data:image/bmp;base64,' + b;
      img.width = 240;
      img.height = 160;

      context.drawImage( img, 0, 0 );
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
