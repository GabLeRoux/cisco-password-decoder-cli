const cisco_password_decoder = require('cisco-password-decoder/cisco-decrypt');

module.exports = {
    remove_nullbyte: function (password) {
        return password.split('\u0000')[0];
    },
    decrypt_password: function (password) {
        return this.remove_nullbyte(cisco_password_decoder.decryptPassword(password));
    }
};
