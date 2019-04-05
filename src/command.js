#!/usr/bin/env node

const decoder = require('./index');
const program = require('commander');
const package = require('../package.json');

program.version(package.version)["arguments"]('<password>').action(function (password) {
    return console.log(decoder.decrypt_password(password));
});

program.parse(process.argv);
