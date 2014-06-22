assert = require "assert"
Messages = require "
  #{ process.cwd() }/src/messages.coffee
"

describe 'Messages', ->

  it 'should successfully get all default messages', ->
    assert.equal allMessagesExist(new Messages()), true

  it 'should successfully get all English messages', ->
    assert.equal allMessagesExist(new Messages("en_us")), true

  it 'should successfully get Spanish messages', ->
    assert.equal allMessagesExist(new Messages("es_es")), true

allMessagesExist = (m) ->
  success = true
  for k, v of m when typeof v is 'function'
    success = k unless typeof m[k]() is 'string' and m[k]().length > 0
  success
