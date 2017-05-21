cisco_password_decoder = require('cisco-password-decoder/cisco-decrypt')

module.exports = {
  # for some reason, the lib returns result with a nullbyte at the end and we don't need this
  remove_nullbyte: (password) ->
    password.split('\u0000')[0]

  decrypt_password: (password) ->
    @remove_nullbyte(cisco_password_decoder.decryptPassword(password))
}
