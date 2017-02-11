request = require \request
fs = require \fs

module.exports = (input, options, callback)->
    config =
      url: "http://#{options.subdomain}.flyber.net/upload"
      headers:
        permission: options.permission
    stream = | typeof! input is \String => fs.createReadStream(input)
             | _ => input
    stream.pipe(request.put(config)).pipe(callback)

