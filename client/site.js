var fs = require( 'fs' );
var express = require( 'express' );

var app = express();

app.use( express.bodyParser() );
// app.use(express.json());       // to support JSON-encoded bodies
// app.use(express.urlencoded()); // to support URL-encoded bodies


app.post( '/newgame', function( req, res ){
  // console.log( req.body );
  // console.log( req.files );
  var infilepath = req.files.ROM.path;

  fs.readFile( infilepath, function(err, data){
    fs.writeFile( __dirname + '/uploads/file' + Math.floor((Math.random() * 100) ), data, function(err){
        res.redirect( 'back' );
    });
  });




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
