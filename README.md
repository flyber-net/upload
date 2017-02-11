# Flyber Upload 

![Upload Image](https://d13yacurqjgara.cloudfront.net/users/211280/screenshots/1866906/dribbble-ixd-image-upload.gif)

Install

```Bash
npm i flyber-upload
```

Usage

```Livescript

upload = require \flyber-upload
fs = require \fs

options = 
    subdomain: "usetest"
    permission: "PERMISSION KEY"

upload fs.createReadStream('doodle.png'), options, (data)->
   console.log data.url
```