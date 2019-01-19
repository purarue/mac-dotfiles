#!/bin/bash

echo "› setting up zsh environment"

# make sure original oh-my-zsh files are removed
original_files=("${HOME}/.zshenv" "${HOME}/.zshrc" "${HOME}/.zsh_history")

for file in "${original_files[@]}"; do
  if [ -f "$file" ]; then
    rm "$file"
  fi
done

DOTDIR="${HOME}/dotfiles"

if [ ! -f ~/.zshenv ]; then
  ln -s "${DOTDIR}/zsh/.zshenv" ~/.zshenv
fi

if [ ! -d ~/bin ]; then
  mkdir ~/bin
fi
