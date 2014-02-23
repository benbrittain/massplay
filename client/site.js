var express = require( 'express' );

var app = express();


app.get( '/newgame', function( req, res ){
  res.send( 'hallo world' );
});


app.get( '*', function(req, res) {

    var path = req.params.join('/').replace( /^\//, '' );

    console.log( path );
    res.sendfile(path );
});


app.listen( 3000 );
