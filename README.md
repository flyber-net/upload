# Flyber Upload 

![Upload Image](https://d13yacurqjgara.cloudfront.net/users/293483/screenshots/3012753/_031-file-upload.gif)

Install

```Bash
npm i flyber-upload
```

Usage

```Livescript

upload = require \flyber-upload

target = "PERMISSION_KEY@usetest.flyber.net"

upload \./doodle.png , target, (data)->
   console.log data.url
```