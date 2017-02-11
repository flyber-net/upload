assert = require('assert')
describe \Upload,  !(_)->
  describe "Upload File", !(_)->
    it \test , (done)->
      upload = require \../index.js
      target = 
        subdomain: \usetest
        permission: \wrongkey

      data <-! upload \./index.js , target
      console.log data.url
      assert.equal(data.err, "no access")
      done!
           