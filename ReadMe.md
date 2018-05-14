# `cisco-password-decoder` CLI

[![Build Status](https://travis-ci.org/GabLeRoux/cisco-password-decoder-cli.svg?branch=master)](https://travis-ci.org/GabLeRoux/cisco-password-decoder-cli)

Exposes a CLI on top of [cisco-password-decoder](https://github.com/artemkin/cisco-password-decoder)

## Installation

```bash
npm i -g cisco-password-decoder
```

## Usage

```bash
cisco-password-decoder "your_encoded_password"
```

## Dev

Install dependencies

```bash
npm i
```

### Test

```bash
npm test
```

### Link command line

Install local repository as global command:

```bash
npm i -g
```

## Known issues

- This project doesn't work on [iojs](https://iojs.org/), see [#3](https://github.com/GabLeRoux/cisco-password-decoder-cli/issues/3) for details
- See [other issues](https://github.com/GabLeRoux/cisco-password-decoder-cli/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc)

Feel free to contribute, pull-requests are welcome :v:

## License

[MIT](LICENSE.md) © [Gabriel Le Breton](https://gableroux.com)
