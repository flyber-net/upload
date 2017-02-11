# Flyber Upload 

[Upload Image](https://cdn.elegantthemes.com/blog/wp-content/uploads/2014/10/UploadLimit-Header.png)

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

upload fs.createReadStream('doodle.png'), options, (data)->
   console.log data.url
```