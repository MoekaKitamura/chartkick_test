[参考サイト](https://techtechmedia.com/chartkick-graph-rails/)

[Github](https://github.com/ankane/chartkick)

[公式ドキュメント](https://chartkick.com/)

gem 'chartkick'

bundle install

↓ application.js
```
//= require chartkick
//= require Chart.bundle
```

## view
- headにscript
- 表示させたいとこに
```
<%= geo_chart Profile.group(:home_country).count %>
```

Placeテーブル作成
rails g model Place code:string name_jp:string name_en:string latitude:float longitude:float
rails db:migrate

seedデータをcsvで投入
rails db:seed