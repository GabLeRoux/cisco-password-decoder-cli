cisco_password_decoder = require('./cisco-password-decoder/cisco-decrypt')

program = require('commander')
program.version('0.0.1')
.arguments('<passwords>')
.action (passwords) ->
  decrypted_passwords = []
#  for p in passwords
#    decrypted_passwords.push(cisco_password_decoder.decryptPassword(p))
  decrypted_passwords.push(cisco_password_decoder.decryptPassword(passwords))

  for dp in decrypted_passwords
    console.log dp

program.parse process.argv