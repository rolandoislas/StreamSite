# StreamSite

StreamSite is a command line utility that allows you to livestream (RTMP) a website.

## Basic Usage

`streamsite <url> <rtmp> [options]`

`streamsite https://github.com rtmp://live.twitch.tv/app/<streamKey>`

Full usage/documentation can be found by running streamsite without passing any arguments.

## Install

### Dependencies

- [PhantomJS](http://phantomjs.org/)
- [FFmpeg](https://ffmpeg.org/)
- xvfb

With those dependencies installed, place [capture.js](capture.js) in `/etc/streamsite/` and [streamsite](streamsite) in `/usr/local/bin/`.

