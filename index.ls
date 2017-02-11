request = require \request
fs = require \fs

module.exports = (input, options, callback)->
    
    if typeof! input is \String and not fs.exists-sync input 
        callback err: "File #{input} doesn't exist"
    
    stream = | typeof! input is \String => fs.createReadStream(input)
             | _ => input
    
    parse-options = (options)->
        #"PERMISSION_KEY@usetest.flyber.net"
        parsed = options.match(/(.+)@(.+)\.flyber\.net/)
        permission: parsed.1
        subdomain: parsed.2
    
    applied-options = 
        | typeof! options is \String = parse-options options
        | _ => options
    
    config =
      url: "http://#{options.subdomain}.flyber.net/upload"
      headers:
        permission: options.permission
      form-data: 
        file: stream
    err, http-response, body <-! request.post config
    if err?
      callback err 
    else 
      callback JSON.parse body

