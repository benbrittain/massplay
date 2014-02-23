var express = require( 'express' );

var app = express();


app.get( '*', function(req, res) {

    var path = req.params.join('/').replace( /^\//, '' );

    console.log( path );
    res.sendfile(path );
});


app.listen( 3000 );
