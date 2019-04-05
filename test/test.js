const cisco_decoder = require('../src/index');
const chai = require('chai');
const expect = chai.expect;

describe('remove_nullbyte', function () {
    return it('should remove nullbyte', function () {
        return expect(cisco_decoder.remove_nullbyte("HelloWorld\u0000")).to.equal("HelloWorld");
    });
});

describe('cisco_password_decoder', function () {
    return it('should decode a password correctly', function () {
        var password, result;
        password = "A39CADD77ED72A9C75467D0F5A5C88BFCD75370DD63E3388D3F402AF50C4E5029071B0965C343B99B6D6636A8698562DDB2EE51020D87EA3";
        result = "HelloWorld";
        return expect(cisco_decoder.decrypt_password(password)).to.equal(result);
    });
});
