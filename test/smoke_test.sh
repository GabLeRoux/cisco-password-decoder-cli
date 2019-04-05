#!/usr/bin/env bash

npm i -g
mkdir tmp
cisco-password-decoder A39CADD77ED72A9C75467D0F5A5C88BFCD75370DD63E3388D3F402AF50C4E5029071B0965C343B99B6D6636A8698562DDB2EE51020D87EA3 > tmp/output.txt
echo 'HelloWorld' > tmp/expected.txt

diff tmp/output.txt tmp/expected.txt

