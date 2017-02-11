# Flyber Upload 

![Upload Image](https://d13yacurqjgara.cloudfront.net/users/293483/screenshots/3012753/_031-file-upload.gif)

Install

```Bash
npm i flyber-upload
```

Usage

```Livescript

upload = require \flyber-upload

options = 
    subdomain: "usetest"
    permission: "PERMISSION KEY"

upload './doodle.png', options, (data)->
   console.log data.url
```