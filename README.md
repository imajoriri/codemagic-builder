# Cmagic

Cmagic は CLI から Codemagic のビルドを実行するツールです。

# インストール

インストールするには

```
brew tap imajoriri/cmagic
brew install cmagic
```

# Codemagic API トークンの設定

API トークンを設定する手順:

1. アクセストークンは Codemagic の UI で Teams > Personal Account > Integrations > Codemagic API > Show から確認できる。
2. `~/.bash_profile` または `~/.zshrc` にトークンを追記する。

```
# bash
echo 'export CODEMAGIC_API_TOKEN=your_api_token_here' >> ~/.bash_profile
source ~/.bash_profile

# zsh
echo 'export CODEMAGIC_API_TOKEN=your_api_token_here' >> ~/.zshrc
source ~/.zshrc
```

<img src="https://github.com/imajoriri/codemagic-builder/assets/30540418/14d98ed9-c977-4d6c-99fd-ce80fb797e03" width="700">

# 通知の設定

Cmagic の通知をバナーではなくアラートで受け取るには、システム環境設定（通知）で変更する。

<img src="https://github.com/imajoriri/codemagic-builder/assets/30540418/cff9c580-e13f-480b-b7ac-77612eb6cb75" width="700">


# アップデート

```
brew update
brew upgrade cmagic
```

# 開発

ローカルで開発する場合:

```bash
# コマンドを実行（例: start）
dart run bin/main.dart start
```

# リリース用ビルド

リリース用の実行ファイルをビルドする場合:

```bash
dart compile exe bin/main.dart -o cmagic
```

`cmagic` がカレントディレクトリに出力される。

### Homebrew で配布する場合

このリポジトリでタグを切り GitHub にリリースしただけでは不十分。[homebrew-cmagic](https://github.com/imajoriri/homebrew-cmagic/blob/main/cmagic.rb) の `cmagic.rb` を更新する必要がある。

1. **version** … 新しいバージョン番号（例: `0.0.6`）
2. **url** … リリースの tarball（例: `https://github.com/imajoriri/codemagic-builder/archive/refs/tags/v0.0.6.tar.gz`）
3. **sha256** … 上記 tarball の SHA256。取得方法:

```bash
# タグ名（例: v0.0.6）は実際のリリースに合わせて変更
curl -sL https://github.com/imajoriri/codemagic-builder/archive/refs/tags/v0.0.6.tar.gz | shasum -a 256
```

出力の先頭 64 文字が `sha256` に書く値。formula を更新しないと `brew upgrade cmagic` は「already installed」のままになる。

# 使い方

### ビルドを開始する

```
cmagic start
```

オプション

- `-b, --branch`: ビルド対象のブランチ名。省略時はカレントブランチ。

![CleanShot 2024-05-27 at 08 11 01@2x](https://github.com/imajoriri/codemagic-builder/assets/30540418/917477ef-b598-40ae-b027-eefcf3f01db8)

![CleanShot 2024-05-27 at 08 10 48@2x](https://github.com/imajoriri/codemagic-builder/assets/30540418/4d83a99c-b5af-4d79-8a86-214d4636f7ee)
