[![pub package](https://img.shields.io/pub/v/t)](https://pub.dev/packages/t)
[![likes](https://img.shields.io/pub/likes/t)](https://pub.dev/packages/t/score)
[![points](https://img.shields.io/pub/points/t)](https://pub.dev/packages/t/score)
[![popularity](https://img.shields.io/pub/popularity/t)](https://pub.dev/packages/t/score)
[![license](https://img.shields.io/github/license/telegramflutter/t)](https://pub.dev/packages/t)
[![stars](https://img.shields.io/github/stars/telegramflutter/t)](https://github.com/telegramflutter/t/stargazers)
[![forks](https://img.shields.io/github/forks/telegramflutter/t)](https://github.com/telegramflutter/t/network/members)
[![sdk version](https://badgen.net/pub/sdk-version/t)](https://pub.dev/packages/t)


Telegram Client API (MTProto) to connect to Telegram and control a user/bot programmatically.

This project is written in 100% Dart language. Over 250,000 lines of code is ported from C++ to Dart. No native binaries, no C++ builds, no bullshit.

## Features

* Supports Telegram API Layer 195.
* Serialize/Deserialize MTProto objects to binary format to be sent/received throught the transport protocol (TCP, HTTP).
* https://pub.dev/packages/tg which is also written in Dart, is a drop-in replacement for `tdllib` which is written in C/C++.

## Important

This project is a pure dart implementation of Telegram's MTProto schema. It does not support transmission of the data between the client and the Telegram server, no Authorization or any kind or key exchange.

There is a complementary package https://pub.dev/packages/tg which aims to be a fully-fledged Telegram client. Currently it supports logging-in with your user account or bot account and communicate through the CLI.

A complete UI with Flutter using this project is undergo in https://github.com/telegramflutter/telegramflutter.


## Contribution

We welcome contributions of any form. Please fork and submit PRs.
