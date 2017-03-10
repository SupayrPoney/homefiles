#!/usr/bin/env zsh

if [ -d $HOME/.local/bin ]; then
    export PATH=$HOME/.local/bin:$PATH;
fi

if [ -d /sbin ]; then
    export PATH=$PATH:/sbin;
fi

if [ -d $HOME/.pyenv/bin ]; then
    export PATH=$HOME/.pyenv/bin:$PATH;
fi


# Add ~/bin to $PATH if it exists
if [ -d $HOME/bin ]; then
    export PATH=$PATH:$HOME/bin;
fi

# Add ruby path to path
if [ -d $HOME/.gem/ruby/2.3.0/bin ]; then
    export PATH=$PATH:$HOME/.gem/ruby/2.3.0/bin; 
fi

#Add at to path
if [ -d $HOME/bin/at ]; then 
    export PATH=$PATH:$HOME/bin/at; 
fi

#Add multiMC to path
if [ -d $HOME/Games/MultiMC ]; then 
    export PATH=$PATH:$HOME/Games/MultiMC; 
fi

#Add Android tools to path

if [ -d $HOME/android-sdks/platform-tools ]; then 
    export PATH=$PATH:$HOME/android-sdks/platform-tools; 
fi