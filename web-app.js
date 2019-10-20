var app = require("express")();
var http = require("http").Server(app);

 var mysql      = require('mysql');
 var connection = mysql.createConnection({
   host     : 'localhost',
   user     : 'root',
   password : 'root'
 });

 connection.connect();

 connection.query('SELECT * from information_schema.tables', function(err, rows, fields) {
 if(!err) {
            app.get("/", function(req, res){
                                res.send(rows);
                });
     console.log("Employee Details", rows);
 } else {
     console.log("Error While perfomring Query ... \n\n");
 }
 });

connection.end();

http.listen(8080, function(){
    console.log("listening on *:8080");
});
