var express = require('express');
var fs = require('fs');
var app = express();
var content = fs.readFileSync('./install.sh');

app.set('port', (process.env.PORT || 3000));

app.get('*', function(request, response) {
  response.end(content);
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'));
})
