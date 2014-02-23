var fs = require( 'fs' );
var defer = require("node-promise").defer;
var express = require( 'express' );
var MongoClient = require('mongodb').MongoClient


var app = express();



var gamesCollectionDeffered = defer();
var gamesCollection = gamesCollectionDeffered.promise;
MongoClient.connect( 'mongodb://127.0.0.1/massplay', function( err, db ){
  var collection = db.collection( 'games' );
  gamesCollectionDeffered.resolve( collection );
  console.log( 'resolved MongoDB future(s)' );
});


var nextPort = 9005;




app.use( express.bodyParser() );
// app.use(express.json());       // to support JSON-encoded bodies
// app.use(express.urlencoded()); // to support URL-encoded bodies


app.post( '/newgame', function( req, res ){
  // console.log( req.body );
  // console.log( req.files );
  var infilepath = req.files.ROM.path;

  fs.readFile( infilepath, function(err, data){
    fs.writeFile( __dirname + '/uploads/file' + nextPort , data, function(err){
      gamesCollection.then( function( collection ){
        collection.insert({
          gamename: req.body.gamename,
          roomname: req.body.roomname,
          port: nextPort
        }, function(){});
        nextPort += 1;
      });

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
