# Scoop-Bucket for Ryoden developers
see https://scoop.sh/.

## Getting Started

1. Windows Key + R を押して、 `powershell` と入力して ENTER を押してください。
2. PowerShell が起動したら、 `iwr -useb get.scoop.sh | iex` と入力してください。

※ なにかしらエラーが出た場合、権限不足が考えられます。以下のコマンドを入力してから再度トライしてください。

```
set-executionpolicy remotesigned -scope currentuser
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
