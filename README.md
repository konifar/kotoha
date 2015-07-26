**※ 日本語ドキュメントは[こちら](https://github.com/konifar/kotoha/blob/master/README_JA.md)。**

# Kotoha
Kotoha is useful [Chrome Extension](https://chrome.google.com/webstore/detail/pbeimjenbibgkakjkpebcndmlbapgnph) that help you to quote a good phrase!

* [Awesome vim plugin](https://github.com/heavenshell/vim-kotoha) released! Thanks!

![capture](https://raw.githubusercontent.com/konifar/kotoha/master/art/quote_demo.gif)

# Usage

## Search by word
You can quote a phrase by typing search word after `/k`.

![capture](https://raw.githubusercontent.com/konifar/kotoha/master/art/tag_quote.png)

## Search by tag
You can quote a phrase by typing search tag (such as title or character name) after `/t`.

![capture](https://raw.githubusercontent.com/konifar/kotoha/master/art/word_quote.png)

## Add your favorite phrase
You can add a phrase from cherry blossoms icon.

It is very simple form which has only phrase and tag text area. Tag should be input title or character name and so on.

![capture](https://raw.githubusercontent.com/konifar/kotoha/master/art/create_demo.gif)


# Development
## 1. Clone from GitHub
```
$ git clone git@github.com:konifar/kotoha.git
```

## 2. Setup
```
$ cd kotoha
$ npm install
$ npm run watch
```

## 3. Load Chrome Extension
Load `kotoha/build` directory from [chrome://extensions/](chrome://extensions/) page.


## 4. Setup kotoha-server
If you want to run kotoha-server in your local, please clone [kotoha-server](https://github.com/konifar/kotoha-server). kotoha-server is Rails application.

You must switch end point to local kotoha-server.

https://github.com/konifar/kotoha/blob/master/src/js/kotoha.coffee#L1-L2
https://github.com/konifar/kotoha/blob/master/src/js/popup.coffee#L1-L2


# Request
Please feel free to submit [Issue](https://github.com/konifar/kotoha/issues).

PullRequest are also welcome.

Or please contact from Twitter. [@konifar](https://twitter.com/konifar)


# Thanks
|Title|Comment|
|:--|:--|
|[ichord/At.js](https://github.com/ichord/At.js)|Very useful auto complete javascript library.|
|[jQuery](http://jquery.com/)|We love jQuery。It is very useful on small project.|
|[lttm-crx](https://github.com/fukayatsu/lttm-crx)|Great Chrome Extension. This project has a good build structure.|
|[あにふれーず](http://aniphrase.com/)|Animation phrase service by [@kgmyshin](https://twitter.com/kgmyshin). After provided API, I want to apply it to Kotoha!|
|[夜桜四重奏 - ハナノウタ](http://yozakura-anime.jp/)|Kotoha is inspirated by 'Kotoha Isone', very cute character. [夜桜四重奏 -ハナノウタ-　第1話「サクラサク」](http://www.nicovideo.jp/watch/1381113319)|
|[vim-kotoha](https://github.com/heavenshell/vim-kotoha)|Awesome vim plugin by by [heavenshell](https://github.com/heavenshell).|
