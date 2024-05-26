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
