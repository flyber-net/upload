request = require \request

module.exports = (stream, options, callback)->
    config =
      url: "http://#{options.subdomain}.flyber.net/upload"
      headers:
        permission: options.permission
    stream.pipe(request.put(config)).pipe(callback);
    


