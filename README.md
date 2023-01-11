# Scoop-Bucket for Ryoden developers

see https://scoop.sh/.

## Getting Started

1. Windows Key + R を押して、 `powershell` と入力して ENTER を押してください。
2. PowerShell が起動したら、 `iwr -useb get.scoop.sh | iex` と入力してください。

※ なにかしらエラーが出た場合、権限不足が考えられます。以下のコマンドを入力してから再度トライしてください。

```
set-executionpolicy remotesigned -scope currentuser
```

※ CATO インストール済みPCでは WSS Agent は Enable にしておくこと。

### Git インストール

scoop は Git を前提としたツールです。以降の作業に必要なため、最初に以下のコマンドでインストールします。

```
scoop install git
```

### Extra Bucket 追加

GUI アプリが登録されている bucket を追加します。

```
scoop bucket add extras
```

### Bucket for RYODEN 追加

RYODEN 向けアプリが登録されている bucket を追加します。

```
scoop bucket add ryoden https://github.com/Ryoden/scoop-bucket.git
```

### アプリのインストール

アプリは `scoop install [appname]` でインストールできます。
最低限以下のアプリはインストールするようにしてください。

```
scoop install 7zip
scoop install git
scoop install rlogin
scoop install ttn-lw-cli
```

## アプリのアップデート

定期的に以下のコマンドを実行してください。
※ powershell で実行すること。 powershell core ではない。

```
scoop update *
```

対象のアプリが起動しているとアップデートできないため、対象アプリは終了しておいてください。

## アプリの定義追加方法

GitHub にあるツール前提。

- `bucket.template.json` をコピーして `bucket/[ツールの名前].json` に保存する
- ファイル内にある `FIXME` を実際の値に置換する
  - `FIXME_DOWNLOAD_x86_URL` および `FIXME_DOWNLOAD_x64_URL` はバージョン部分を `$version` に置き換える
  - 実際が `https://example.com/releases/v0.13.7/hoge.zip` だったら `https://example.com/releases/v$version/hoge.zip`
- pwsh を起動して、 `.\bin\checkver.ps1 -Update .\bucket\[ツールの名前].json` を実行
- リポジトリにコミットする
