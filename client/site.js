var express = require( 'express' );

var app = express();

app.use( express.bodyParser() );
// app.use(express.json());       // to support JSON-encoded bodies
// app.use(express.urlencoded()); // to support URL-encoded bodies


app.post( '/newgame', function( req, res ){
  console.log( req.body.gamename );
  console.log( req.body );
  res.send( 'hallo world' );
});


app.get( '*', function(req, res) {

    var path = req.params.join('/').replace( /^\//, '' );

    console.log( path );
    res.sendfile(path );
});


app.get( '/', function( req, res ){
  console.log( 'index' );
  res.sendfile( 'index.html' );
});


app.listen( 3000 );
