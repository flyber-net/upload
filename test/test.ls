assert = require('assert')
describe \Upload,  !(_)->
  describe "Upload File", !(_)->
    it \test , (done)->
      upload = require \../index.js
      target = 
        subdomain: \usetest
        permission: \wrongkey

      data <-! upload \./index.js , target
      #console.log data.url
      assert.equal(data.err, "no access")
      done!
  describe "Upload File 2", !(_)->
    it \test , (done)->
      upload = require \../index.js
      target = 
        subdomain: \usetest
        permission: \asdfasfsa343423qwerAwerewr

      data <-! upload \./index.js , target
      #console.log data
      assert.equal(typeof! data.url is \String, yes)
      done!         
  describe "Upload File 3", !(_)->
    it \test , (done)->
      upload = require \../index.js
      target = \wrongkey@usetest.flyber.net

      data <-! upload \./index.js , target
      #console.log data
      assert.equal(data.err, "no access")
      done!  
  describe "Upload File 4", !(_)->
    it \test , (done)->
      upload = require \../index.js
      target = \asdfasfsa343423qwerAwerewr@usetest.flyber.net

      data <-! upload \./index.js , target
      #console.log data
      assert.equal(typeof! data.url is \String, yes)
      done!    