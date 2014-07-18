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

  describe 'alertMessageExportSuccess', ->

    it 'should pass through en_us', ->
      messages = new Messages("en_us")
      assert messages.alertMessageExportSuccess("foobar").indexOf('foobar') >= 0

    it 'should pass through es_es', ->
      messages = new Messages("es_es")
      assert messages.alertMessageExportSuccess("foobar").indexOf('foobar') >= 0

    it 'should pass through fr_fr', ->
      messages = new Messages("fr_fr")
      assert messages.alertMessageExportSuccess("foobar").indexOf('foobar') >= 0

    it 'should pass through pt_br', ->
      messages = new Messages("pt_br")
      assert messages.alertMessageExportSuccess("foobar").indexOf('foobar') >= 0

allMessagesExist = (m) ->
  success = true
  for k, v of m when typeof v is 'function'
    success = k unless typeof m[k]() is 'string' and m[k]().length > 0
  success
