# my dotfiles

## Clone the repo
[Use a specific SSH key to clone a repo](https://ralphjsmit.com/git-custom-ssh-key)

## Symlink the files
```
ln -s ~/Code/dotfiles/.zshrc  ~/.zshrc
ln -s ~/Code/dotfiles/.hyper.js  ~/.hyper.js
ln -s ~/Code/dotfiles/starship.toml ~/starship.toml
ln -s ~/Code/dotfiles/.vimrc ~/.vimrc
ln -s ~/Code/dotfiles/.config/helix ~/.config/helix
```

## Install these pre-requisites
- [Brew](https://docs.brew.sh/Installation)
- [Monaspace Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Monaspace.zip)

## Install most things
```
brew bundle install --file Brewfile
brew bundle install --file Brewfile-Work
```

## Plus these
- [Oh My ZSH](https://ohmyz.sh/#install)
- [ZSH autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#manual-git-clone)
- [Mise](https://github.com/jdx/mise#quickstart)
- [Typescript LSP](https://github.com/typescript-language-server/typescript-language-server)
- [ESLint](https://github.com/eslint/eslint)
- [Prettier](https://github.com/prettier/prettier)

## And these extra apps
- [1Password](https://my.1password.com/)
- [Postgres.app](https://postgresapp.com/)
- [Beepkeeper Studio Community Edition](https://github.com/beekeeper-studio/beekeeper-studio)
- [Things](https://culturedcode.com/things/)
- [AltTab](https://alt-tab-macos.netlify.app/)
- [AppCleaner](https://freemacsoft.net/appcleaner/)
