H = require "hyperweb"
H.blastOff()

get '/', ->
  'Hello FogCreek!'

post '/:name', (name, data) ->
  H.data.set name, data
  .then ->
    "#{name} was set to #{JSON.stringify(data)}"

get '/:name', (name) ->
  H.data(name)
