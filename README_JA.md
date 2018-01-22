# Kotoha (ことは)
Kotohaは、イケてる名言を簡単に引用できるようになる[Chrome Extension](https://chrome.google.com/webstore/detail/pbeimjenbibgkakjkpebcndmlbapgnph)です。

![capture](https://raw.githubusercontent.com/konifar/kotoha/master/art/quote_demo.gif)

# 使い方

## 単語から探す
`/k` の後に単語をタイプすることで単語が含まれる名言を引用できます。

![capture](https://raw.githubusercontent.com/konifar/kotoha/master/art/tag_quote.png)

## タグから探す
`/t` の後に単語をタイプすることで単語が含まれる名言を引用できます。

![capture](https://raw.githubusercontent.com/konifar/kotoha/master/art/word_quote.png)

## 名言を登録する
Chromeに追加された桜のアイコンから名言を登録できます。

名言とタグだけのシンプルなフォームです。タグには、キャラクターや作品名などを入力してください。

![capture](https://raw.githubusercontent.com/konifar/kotoha/master/art/create_demo.gif)


# 開発セットアップ
## 1. GitHubからclone
```
$ git clone git@github.com:konifar/kotoha.git
```

## 2. セットアップ
```
$ cd kotoha
$ npm install
$ npm run watch
```

## 3. Chrome Extensionを読み込み
[chrome://extensions/](chrome://extensions/)の `パッケージ化されていない拡張機能を` から、 `kotoha/build` ディレクトリを読み込ませます。


## 4. サーバーサイドのセットアップ
サーバーもローカルで動かしたい場合は、[kotoha-server](https://github.com/konifar/kotoha-server)をクローンしてください。kotoha-serverはRailsで作られています。

エンドポイントをローカルサーバーに切り替えれば動作します。

https://github.com/konifar/kotoha/blob/master/src/js/kotoha.coffee#L1-L2
https://github.com/konifar/kotoha/blob/master/src/js/popup.coffee#L1-L2


# リクエスト
お気軽に[Issue](https://github.com/konifar/kotoha/issues)を登録してください。PullRequestも大歓迎です。

直接連絡いただく場合は、[@konifar](https://twitter.com/konifar)までお願いします。

# 関連ツール
* [Awesome vim plugin](https://github.com/heavenshell/vim-kotoha) by [@heavenshell](https://github.com/heavenshell)
* [Awesome slack bot](https://github.com/tomoima525/kotoha-slack) by [@tomoima525](https://github.com/tomoima525)

# サンクス
|タイトル|一言|
|:--|:--|
|[ichord/At.js](https://github.com/ichord/At.js)|オートコンプリートを簡単に実装できるライブラリ。|
|[jQuery](http://jquery.com/)|みんな大好きjQuery。やっぱり小さいプロジェクトならjQueryが楽。|
|[lttm-crx](https://github.com/fukayatsu/lttm-crx)|LGTM画像などを簡単に貼れるChrome Extension。ビルド構成などめちゃくちゃ参考になりました。|
|[あにふれーず](http://aniphrase.com/)|[@kgmyshin](https://twitter.com/kgmyshin)さんの作ったアニメ名言サービス。APIが公開されたら速攻対応します。|
|[夜桜四重奏 - ハナノウタ](http://yozakura-anime.jp/)|五十音ことはの「ショートカット！でっかい水槽！」にインスピレーションをもらいました。[夜桜四重奏 -ハナノウタ-　第1話「サクラサク」](http://www.nicovideo.jp/watch/1381113319)|
|[vim-kotoha](https://github.com/heavenshell/vim-kotoha)|[heavenshell](https://github.com/heavenshell)さんがVimで使えるようにしてくれました。 [[Vim] Kotoha の Vim plugin を作った](http://d.hatena.ne.jp/heavenshell/20150725/1437836065)|
|[kotoha-slack](https://github.com/tomoima525/kotoha-slack) | [tomoima525](https://github.com/tomoima525)さんがSlackコマンドで使えるようにしてくれました。[アニメの名言をSlackに引用できるkotoha-slackを作りました](http://tomoima525.hatenablog.com/entry/2016/10/16/171722)
|[kotoha-alfred-workflow](https://github.com/kgmyshin/kotoha-aldred-workflow) | [kgmyshin](https://github.com/kgmyshin)さんがalfredで使えるようにしてくれました。 [kotohaのalfred workflow作りました](http://motida-japan.hatenablog.com/entry/2018/01/22/183000)
