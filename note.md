[参考サイト](https://techtechmedia.com/chartkick-graph-rails/)

[Github](https://github.com/ankane/chartkick)

[公式ドキュメント](https://chartkick.com/)

## チャート地図
gem 'chartkick'

bundle install

↓ application.js
```
//= require chartkick
//= require Chart.bundle
```

#### view
- headにscript
- 表示させたいとこに
```
<%= geo_chart Profile.group(:home_country).count %>
```

## データ
Placeテーブル作成
rails g model Place code:string name_jp:string name_en:string latitude:float longitude:float
rails db:migrate

seedデータをcsvで投入
rails db:seed

## google map
google map API取得 => 地図表示

gem 'dotenv-rails'を使って.envに書く、.gitignoreも編集

## 国旗アイコン
flag-css
codeと使って国旗表示

## geocoder
[参考サイト 地図おじさん](https://qiita.com/tiara/items/4a1c98418917a0e74cbb)
[参考サイト 地図おじさん2](https://qiita.com/tiara/items/573fe5f1a84ca57dabcd)

gem 'geocoder'

