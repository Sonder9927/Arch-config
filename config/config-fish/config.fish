
function fish_greeting
end
if status is-interactive
    # Commands to run in interactive sessions can go here
end
scheme set tomorrow

set proxy_host 127.0.0.1:8889
set proxy_auth true
set proxy_user merak

if test -f /home/merak/.autojump/share/autojump/autojump.fish; . /home/merak/.autojump/share/autojump/autojump.fish; end
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /home/merak/.miniconda/bin/conda "shell.fish" "hook" $argv | source
eval /opt/miniconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set TexMan /usr/local/texlive/2021/texmf-dist/doc/man
set TexInfo /usr/local/texlive/2021/texmf-dist/doc/info
set TexLive /usr/local/texlive/2021/bin/x86_64-linux
set MANPATH $MANPATH $TexMan
set INFOPATH $INFOPATH $TexInfo

set PATH /home/merak/go/bin /home/merak/.local/share/gem/ruby/3.0.0/bin /opt/cuda/bin $TexLive $PATH
set GOPATH /home/merak/go/
set GOPROXY "https://mirrors.aliyun.com/goproxy/"

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/merak/.ghcup/bin $PATH # ghcup-env

alias py 'conda activate'
alias vi /home/merak/.local/bin/lvim

export FTP_PROXY=""
export ALL_PROXY=""
export HTTPS_PROXY=""
export HTTP_PROXY=""
export https_proxy=""
export http_proxy=""
export ftp_proxy=""
export all_proxy=""

conda deactivate
#neofetch
[ -e "hello" ] && ./hello
py rose
