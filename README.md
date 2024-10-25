# dotfiles

This repo is not updated anymore, my [dotfiles](https://github.com/purarue/dotfiles) repo works on MacOS/Linux. It checks the OS and installs packages properly; calls out to wrapper scripts to handle cross platform functionality.


-- OLD README BELOW --
-------

there are many `dotfiles`, but these are mine.

 My `dotfiles` directory sits at `~/dotfiles`, each directory includes an relevant `install.sh` file, you can run all of them by running [`./setup`](./setup).

[bin](./bin) has the most interesting things here, you can read its [README](./bin/README.md) for descriptions.

Notes:
- `setup` sets `$ZDOTDIR` to `~/dotfiles/zsh/`, and symlinks `~/dotfiles/zsh/.zshenv` to `~/.zshenv`
- `setup` sets `$ZSH_CUSTOM` to `~/dotfiles/zsh/custom`, so any additional plugins/themes should be put there (i.e. in `~/dotfiles/zsh/custom/themes`)
- [todo](/bin/todo) creates a todo on the Desktop, todos are listed when a shell is opened

### installation (Mac)

    cd # go home
    # install developer tools
    xcode-select --install
    # Install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    git clone https://github.com/purarue/mac-dotfiles dotfiles
    ./dotfiles/setup
