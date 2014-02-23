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
      if(1) {

      console.log( 'got a frame' );

      var img = document.createElement( 'img' );
      img.src = 'data:image/bmp;base64,' + message.data;
      img.width = 'auto';
      img.height = 'auto';


      img.onload = function(){
        console.log( 'loaded' );
        context.drawImage( img, 0, 0, 240, 160 );
      }
  }
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
