chai = require 'chai'
expect = chai.expect

app = require('../app')

describe 'remove_nullbyte', ->
  it 'should remove nullbyte', ->
    expect(app.remove_nullbyte("HelloWorld\u0000")).to.equal "HelloWorld"

describe 'cisco_password_decoder', ->
    task1 = task2 = null
    it 'should decode a password correctly', ->
      password = "A39CADD77ED72A9C75467D0F5A5C88BFCD75370DD63E3388D3F402AF50C4E5029071B0965C343B99B6D6636A8698562DDB2EE51020D87EA3"
      result = "HelloWorld"
      expect(app.decrypt_password(password)).to.equal result
