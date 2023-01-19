alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias activate="source venv/bin/activate"
alias vlime="sbcl --load ~/.local/share/nvim/plugged/vlime/lisp/start-vlime.lisp"
alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias ls="exa --all --long --git --header --icons"
alias cd="z"
alias gui="gitui"
alias src="source ~/.zshrc ~/.zshenv ~/.zprofile"
alias n="/opt/homebrew/bin/nvim"
alias nn="/usr/local/bin/nvim" # Neovim built from source
alias rg="rg --hidden --follow --glob '!.git/*'"
alias fd="fd --hidden --follow --exclude '.git'"
alias ipy="ipython3"
alias bathelp='bat --plain --language=help'
help() {
    "$@" --help 2>&1 | bathelp
}
alias pd="pandoc"
alias pddm="pandoc -f docx -t markdown --markdown-headings atx"
alias pdmh="pandoc -f markdown -t html"
alias pdmd="pandoc -f markdown -t docx"
alias pdmp="pandoc -f markdown -t pdf"
alias sed="gsed"
alias time="gtime"
alias nd="neovide"
# alias nf="nvim $(fd -t f | fzf)"
alias :q="exit"
alias exe="chmod +x"
alias emailer="~/Documents/GitHub/emailer/emailer"

alias b="brew"
alias bi="brew install"
alias bun="brew uninstall"
alias bic="brew install --cask"
alias bunc="brew uninstall --cask"
alias bs="brew search"
alias bin="brew info"
alias bsc="brew search --cask"
alias bu="brew upgrade"
alias buc="brew upgrade --cask"

alias cr="cargo run"
alias crr="cargo run --release"
alias cb="cargo build"
alias cbr="cargo build --release"
