# wails-mint-template

> 🏗 UNDER CONSTRUCTION

## About

A basic template that allows you to develop a Wails application using [Mint Lang](https://www.mint-lang.com/), a [Crystal](https://crystal-lang.org/)-powered programming language designed specifically for creating SPAs.

## Live Development

To run in live development mode, run `wails dev`. This will invoke `mint start` behind the scenes.

Your application will appear in a window but if you prefer to use a browser, you can navigate to http://localhost:34115.

The Mint server runs on http://localhost:3000 but it won't be able to talk to your Go backend unless you use the address above.

Initially, you may get an error about `frontend/dist` not being found. Run `wails build` once to generate it and you should be good to go.

## Building

To build a redistributable, production mode package, use `wails build`.

## Issues

Unfortunately I don't know very much about Mint. I came across it recently and thought it would be interesting test to make a Wails template.

My intention is to replace the stock Mint start screen with a recreation of the Wails screen to demonstrate how to use Mint with Wails.

[Javascript Interoperability](https://www.mint-lang.com/guide/reference/javascript-interop) is supposed so it's possible in theory to use Mint with the Wails runtime but I haven't got a working example just yet.

With that said, use this template at your own risk and don't assume anything works until proven.
