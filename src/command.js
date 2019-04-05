#!/usr/bin/env node

const decoder = require('./index');
const program = require('commander');

program.version('0.0.3')["arguments"]('<password>').action(function (password) {
    return console.log(decoder.decrypt_password(password));
});

program.parse(process.argv);
