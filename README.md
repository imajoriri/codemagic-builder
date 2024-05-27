# Cmagic

cmagic is a tool for building Codemagic from CLI.

# Installing

To install the cmagic

```
brew tap imajoriri/cmagic
brew install cmagic
```

# Setup Codemagic API Token

To set the API token, follow these steps:

1. The access token is available in the Codemagic UI under Teams > Personal Account > Integrations > Codemagic API > Show.
2. Add the API token to your `~/.bash_profile` or `~/.zshrc` file.

```
# bash
echo 'export CODEMAGIC_API_TOKEN=your_api_token_here' >> ~/.bash_profile
source ~/.bash_profile

# zsh
echo 'export CODEMAGIC_API_TOKEN=your_api_token_here' >> ~/.zshrc
source ~/.zshrc
```

<img src="https://github.com/imajoriri/codemagic-builder/assets/30540418/14d98ed9-c977-4d6c-99fd-ce80fb797e03" width="700">

# Updating

```
brew update
brew upgrade cmagic
```

# Usage

### Start new build

```
cmagic start
```

options

- `-b, --branch`: Branch name to build against. Default is current branch.

![CleanShot 2024-05-27 at 08 11 01@2x](https://github.com/imajoriri/codemagic-builder/assets/30540418/917477ef-b598-40ae-b027-eefcf3f01db8)

![CleanShot 2024-05-27 at 08 10 48@2x](https://github.com/imajoriri/codemagic-builder/assets/30540418/4d83a99c-b5af-4d79-8a86-214d4636f7ee)
