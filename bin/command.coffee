#! /usr/bin/env coffee

decoder = require('../src/index')

program = require('commander')

program.version('0.0.1')
.arguments('<password>')
.action (password) ->
  console.log decoder.decrypt_password(password)

program.parse process.argv
