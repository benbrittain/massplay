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

    $('.ctl-button').on( 'click', function(){
      var code = $(this).data( 'ctl-seq' );
      ws.send( code.toUpperCase() );  // the toUpperCase is redundant, but safe
    });

});

 $( document ).keypress(function( event ) {
    $('.ctl-button').on( 'click', function(){
      switch(event.which){
	case 37: 
	  var code = $(this).data( 'CTRL_LEFT' );
	  break;
	case 38:
	  var code = $(this).data( 'CTRL_UP' );
	  break;
	case 39:
	  var code = $(this).data( 'CTRL_RIGHT' );
	  break;
	case 40:
	  var code = $(this).data( 'CTRL_DOWN' );
	  break;
	case 58:      // Z
	case 59:
	  var code = $(this).data( 'CTRL_A' );
	  break;
	case 88:     // X
	case 120:
	  var code = $(this).data( 'CTRL_B' );
	  break;
	case 65:    // A
	case 97:
	  var code = $(this).data( 'CTRL_LSHOULDER' );
	  break;
	case 83:    // S
	case 115:
	  var code = $(this).data( 'CTRL_RSHOULDER' );
	  break;
	case 74:    // C
	case 106:
	  var code = $(this).data( 'CTRL_START' );
	  break;
	case 75:
	case 107:
	  var code = $(this).data( 'CTRL_START' );
	  break;
	}
	ws.send( code.toUpperCase() );  // the toUpperCase is redundant, but safe
    });
  });
  $( "#other" ).click(function() {
  $( "#target" ).keypress();
});


console.log( ws );
