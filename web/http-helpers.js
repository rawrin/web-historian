var path = require('path');
var fs = require('fs');
var archive = require('../helpers/archive-helpers');

exports.headers = headers = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10, // Seconds.
  'Content-Type': "text/html"
};

exports.serveAssets = function(res, asset, assetType) {
  // Write some code here that helps serve up your static files!
  // (Static files are things like html (yours or archived from others...), css, or anything that doesn't change often.)
  headers['Content-Type'] = 'text/' + assetType;
  res.writeHead(200, headers);
  var fileStream = fs.createReadStream(archive.paths.siteAssets + asset);
    fileStream.on('data', function (data) {
        res.end(data);
    });
};

// As you progress, keep thinking about what helper functions you can put here!

//func
//use helper to check if in list
//if yes, load page
//if no, add to list then load page
exports.serveScrapedSites = function(res, asset) {
  headers['Content-Type'] = 'text/html';
  res.writeHead(200, headers);
  var fileStream = fs.createReadStream(archive.paths.archivedSites + asset);
    fileStream.on('data', function (data) {
        res.end(data);
    });

};