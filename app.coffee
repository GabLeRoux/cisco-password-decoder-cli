cisco_password_decoder = require('cisco-password-decoder/cisco-decrypt')

program = require('commander')

# for some reason, the lib returns result with a nullbyte at the end
# we don't need this
@remove_nullbyte = (password) ->
  password.split('\u0000')[0]

@decrypt_password = (password) ->
  @remove_nullbyte(cisco_password_decoder.decryptPassword(password))

program.version('0.0.1')
.arguments('<password>')
.action (password) ->
  console.log @decrypt_password(password)

program.parse process.argv
