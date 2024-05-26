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
echo 'export API_TOKEN=your_api_token_here' >> ~/.bash_profile
source ~/.bash_profile

# zsh
echo 'export API_TOKEN=your_api_token_here' >> ~/.zshrc
source ~/.zshrc
```

<img src="https://github.com/imajoriri/codemagic-builder/assets/30540418/14d98ed9-c977-4d6c-99fd-ce80fb797e03" width="700">

# Updating

```
brew update cmagic
```

# Usage

### Start new build

```
cmagic start
```

options

- `-b, --branch`: Branch name to build against. Default is current branch.
