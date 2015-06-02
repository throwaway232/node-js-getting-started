H = require "hyperweb"
H.blastOff()

get '/', ->
  'Hello to the demo!'

get '/:name/:value', (name, value) ->
  H.email "danielx@fogcreek.com",
    subject: "A key has been set!"
    text: "#{name} was set to #{value}"

  H.data(name, value)

post '/:name', (name, data) ->
  H.data.set name, data
  .then ->
    "#{name} was set to #{data}"

get '/:name', (name) ->
  H.data(name)
