H = require "hyperweb"
H.blastOff()

get '/', ->
  'It worked!'

post '/:name', (name, data) ->
  H.data.set name, data
  .then ->
    "#{name} was set to #{JSON.stringify(data)}"

get '/:name', (name) ->
  H.data(name)

get '/notify', ->
  H.email "danielx@fogcreek.com",
    subject: "HyperWeb"
    text: "hey I went to the /notify url"
  .then ->
    "Email sent!"
