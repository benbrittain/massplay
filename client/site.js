var fs = require( 'fs' );
var defer = require("node-promise").defer;
var express = require( 'express' );
var MongoClient = require('mongodb').MongoClient
var Handlebars = require( 'handlebars' );


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
        console.warn( 'WE SHOULD START THE GAME HERE' );
        collection.insert({
          gamename: req.body.gamename,
          roomname: req.body.roomname,
          port: nextPort
        }, function(){});
        nextPort += 1;
        res.redirect('back');
      });

    });
  });


});


app.get( '*', function(req, res) {

    var path = req.params.join('/').replace( /^\//, '' );

    console.log( path );
    if( path == '' ){
      res.sendfile( 'index.html' );
    }else{
      res.sendfile(path );
    }
});




app.listen( 8000 );




// HELPER FUNCTIONS

function openTemplate( path ){
  var deferred;
  fs.readFile( path, function(err, data){
      deferred.resolve( Handlebars.compile( data ) );
  });
  return deffered.promise;
}
