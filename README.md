TvB's Dotfiles
================

This is in the process of being updated to a modern 2022 workflow.  I would like to nudge most programs to a XDG-like ~/.config folder to avoid polluting my home dir.  Also, my regularly used programs in a terminal setting have changed a little.  


Things I would like to have:

    - Tmux / Screen multipane windows with intuitive keybindings
    - Vim for text editing
    - Git configs
    - Bash  / Zsh with informative command prompt
    - Update script
 
This is my collection of personal dotfiles.  There is a bootstrap script that rsyncs the dotfiles to the users home directory
located in ./scripts/bootstrap.sh


# Usage

Instead of linking everything, single config files can be symbolically linked.  For example

```
cd && ln -s $DOTFILES/.vimrc
```

will link the `.vimrc` file, which now can bootstrap itself.
