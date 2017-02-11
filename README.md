Flyber Upload 

```Livescript

upload = require \flyber-upload

options = 
    subdomain: "usetest"
    permission: "PERMISSION KEY"

upload fs.createReadStream('doodle.png'), options, (data)->
   console.log data.url
```