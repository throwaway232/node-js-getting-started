H = require "hyperweb"
H.blastOff()

get '/', ->
  'It really worked!'

post '/:name', (name, data) ->
  H.data.set name, data
  .then ->
    "#{name} was set to #{JSON.stringify(data)}"

get '/:name', (name) ->
  H.data(name)
