export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME='geoffgarside'

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

set +m

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#666666"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats 'on %b'

alias vi="nvim"
alias vim="nvim"

alias intel="arch -x86_64"
alias arm="arch -arm64"

alias nvc="cd ~/.config/nvim"

# TODO: check some exports here and clean

export PATH=/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/osquery:/opt/pfutil:/opt/homebrew/bin
export PATH="$HOME/tools/lua-language-server/bin/macOS:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export JAVA_HOME="$(/usr/libexec/java_home -v 11)"
export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# python pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi
# pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null; then 
  eval "$(pyenv virtualenv-init -)"; 
fi
# tcl-tk
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"
export PYTHON_CONFIGURE_OPTS="--with-tcltk-includes='-I/usr/local/opt/tcl-tk/include' --with-tcltk-libs='-L/usr/local/opt/tcl-tk/lib -ltcl8.6 -ltk8.6'"

source "$HOME/.cargo/env"
export JAVA_HOME="$(/usr/libexec/java_home -v 17)"

export CPPFLAGS="-isysroot $(xcrun --sdk macosx --show-sdk-path)"
export CXX=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="$PATH:$HOME/bin"

if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files'
  export FZF_DEFAULT_OPTS='-m --height 50% --border'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
