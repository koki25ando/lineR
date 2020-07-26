# lineR

lineRパッケージは[LINE Notify API](https://notify-bot.line.me/doc/ja/)を用いてRStudioからLineに通知メッセージを送る機能を提供します。パッケージ機能を利用するにはユーザー個人でAPIトークンを発行していただく必要があります。また、これらのAPIトークンはユーザー個人で保管していただく必要があり、コードに直接記載していただくことを防ぐため、.Renvironのファイル内で管理することを推奨しております。

## Installation

現段階ではCRANに登録しておらず、開発版しかないため'devtools::install_github("koki25ando/lineR")'を実行してインストールして使用していただく形になります。

```{r}
devtools::install_github("koki25ando/lineR")
library(lineR)
```

## Package Contents
+ line_task_notify(msg)

### See Also
+ [LINE Notify API Document (English)](https://notify-bot.line.me/doc/en/)
+ [LINE Notify API Document (日本語)](https://notify-bot.line.me/doc/ja/)