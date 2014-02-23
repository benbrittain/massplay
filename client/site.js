var fs = require( 'fs' );
var defer = require("node-promise").defer;
var express = require( 'express' );
var MongoClient = require('mongodb').MongoClient
var Handlebars = require( 'handlebars' );



var sys = require('sys')
var exec = require('child_process').exec;
function nothingFN3(error, stdout, stderr) { };


var app = express();



var gamesCollectionDeffered = defer();
var gamesCollection = gamesCollectionDeffered.promise;
MongoClient.connect( 'mongodb://107.170.70.149/massplay', function( err, db ){
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
  var outfilename = __dirname + '/uploads/file' + nextPort;

  fs.readFile( infilepath, function(err, data){
    fs.writeFile( outfilename, data, function(err){
      gamesCollection.then( function( collection ){
        console.warn( 'WE SHOULD START THE GAME HERE' );
        collection.insert({
          gamename: req.body.gamename,
          roomname: req.body.roomname,
          port: nextPort
        }, function(){});
        exec( '../server/vbam ' + outfilename + '  ' + nextPort, nothingFN3 );
        redirect = '/play/' + nextPort;
        nextPort += 1;
        res.redirect(redirect);
      });

    });
  });


});


app.get( ['/start.html', '/start' ], function( req, res ){
  openTemplate( 'start.html' ).then( function( tpl ){
    getOngoingGames().then( function(games){
      res.send( tpl( {games: games} ) );
    });
  });
});


app.get( '/play/:port', function( req, res ){
  var port = req.param.port
  console.log( 'USING PORT %d', port );
  openTemplate( 'index.html' ).then( function( template ){
      res.send( template( {games:  []} ) );
  });
});


app.get( '*', function(req, res) {

    var path = req.params.join('/').replace( /^\//, '' );

    console.log( path );
    if( path == '' ){
      openTemplate( 'index.html' ).then( function( template ){
          res.send( template( {games:  []} ) );
      });

    }else{
      res.sendfile(path );
    }
});




app.listen( 8000 );



// HELPER FUNCTIONS
function openTemplate( path ){
  var deferred = defer();
  fs.readFile( path, 'utf-8', function(err, data){
      console.log( data );
      console.log( data );
      deferred.resolve( Handlebars.compile( data )  );
  });
  return deferred.promise;
}



function getOngoingGames( ){
  var  deferred  = defer();

  var gamesrst = gamesCollection.then( function( coll) {
    var res = coll.find({gamename: {'$ne': ''} }).toArray( function( err, results ){
      var toSend =  results.map( function( elm ){
        return {
          name: elm.gamename,
          roomname: elm.roomname || elm.gamename,
          port: elm.port
        };
      });
      deferred.resolve( toSend );

    });
  });
  return deferred.promise;
}
