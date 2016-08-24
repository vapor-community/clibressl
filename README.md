# LibreSSL for Swift

![Swift](http://img.shields.io/badge/swift-v3.0--dev.08.18-brightgreen.svg)
[![Build Status](https://travis-ci.org/vapor/clibressl.svg?branch=master)](https://travis-ci.org/vapor/clibressl)
[![CircleCI](https://circleci.com/gh/vapor/clibressl.svg?style=shield)](https://circleci.com/gh/vapor/clibressl)
[![Slack Status](http://vapor.team/badge.svg)](http://vapor.team)

This module wraps LibreSSL 2.4.2 in a Swift module.

```swift
import CLibreSSL

var context = SHA_CTX()
SHA1_Init(&context)
```

## 🚀 Features 

- TLS (SSL)
- Crypto

## 🌏 Environment

|CLibreSSL|Xcode|Swift|
|:-:|:-:|:-:|
|0.1.x|8.0 Beta **6**|DEVELOPMENT-SNAPSHOT-2016-08-18-a|

## 📖 Documentation

Visit the Vapor web framework's [documentation](http://docs.vapor.codes) for instructions on how to install Swift 3. 

## 💧 Community

We pride ourselves on providing a diverse and welcoming community. Join your fellow Vapor developers in [our slack](http://vapor.team) and take part in the conversation.

## 🔧 Compatibility

Core has been tested on macOS 10.11, Ubuntu 14.04, and Ubuntu 15.10.

## 👥 Authors

Made by [Tanner Nelson](https://twitter.com/tanner0101) and the hundreds of members of the Vapor community.
