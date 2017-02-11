# Flyber Upload 

![Upload Image](https://d13yacurqjgara.cloudfront.net/users/293483/screenshots/3012753/_031-file-upload.gif)

Install

```Bash
npm i flyber-upload
```

Usage

```Javascript

var upload = require('flyber-upload');

var target = "PERMISSION_KEY@SUBDOMAIN.flyber.net";

upload('./doodle.png', target, function(response){
  return console.log(response.url);
});

```

or
```Javascript

var upload = require('flyber-upload');
var fs = require("fs");

var target = {
    permission: "PERMISSION_KEY",
    subdomain: "SUBDOMAIN"
};
var file = fs.createReadStream('./doodle.png');

upload(file, target, function(response){
  return console.log(response.url);
});

```