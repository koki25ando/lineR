# lineR

lineRパッケージは[LINE Notify API](https://notify-bot.line.me/doc/ja/)を用いてRStudioからLineに通知メッセージを送る機能を提供します。パッケージ機能を利用するにはユーザー個人でAPIトークンを発行していただく必要があります。また、APIトークンはユーザー個人で保管していただく必要があり、.Renvironのファイル内で`LINE_API_TOKEN`という名前で管理することを推奨しております。

## Installation

現段階ではCRANに登録しておらず、開発版しかないため下記のコードを実行してインストールし、使用していただく形になります。

```{r}
devtools::install_github("koki25ando/lineR")
library(lineR)
```

## Package Contents
+ line_task_notify(msg)

### See Also
+ [LINE Notify API Document (English)](https://notify-bot.line.me/doc/en/)
+ [LINE Notify API Document (日本語)](https://notify-bot.line.me/doc/ja/)