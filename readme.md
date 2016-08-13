StreamSite
---

StreamSite is a command line utility that allows you to livestream (RTMP) a website.

### [Demo](https://www.twitch.tv/twitchplaysscrabble/v/83305444)

## Basic Useage

`streamsite <url> <rtmp> [options]`

`streamsite https://github.com rtmp://live.twitch.tv/app/<streamKey>`

Full usage/documentation can be found by running streamsite without passing any arguments.

## Install

StreamSite depends on [PhantomJS](http://phantomjs.org/) and [FFmpeg](https://ffmpeg.org/).

With those dependencies installed, place [capture.js](capture.js) in `/etc/streamsite/` and [streamsite](streamsite) in `/usr/local/bin/`.

