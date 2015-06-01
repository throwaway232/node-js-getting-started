H = require "hyperweb"
H.blastOff()

get '/', ->
  'It worked!'

get '/set/:name/:value', (name, value) ->
  H.data(name, value)

get '/:name', (name) ->
  H.data(name)
