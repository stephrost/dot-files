# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.bash_{prompt,aliases,exports,functions,options,paths}
do
    [[ -r "$file" ]] && [[ -f "$file" ]] && source "$file"
done
unset file

# Add tab completion for many Bash commands
#if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]
#then
#    source "$(brew --prefix)/share/bash-completion/bash_completion"
#fi

# Enable tab completion for `g` by marking it as an alias for `git`
#if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]
#then
#    complete -o default -o nospace -F _git g
#fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#[[ -e "$HOME/.ssh/config" ]] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
#complete -W "NSGlobalDomain" defaults

# Add `killall` tab completion for common apps
#complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

## node completions
#if [[ -d ~/.node-completion ]]; then
#    shopt -s progcomp
#    for f in $(command ls ~/.node-completion); do
#        f="$HOME/.node-completion/$f"
#        test -f "$f" && . "$f"
#    done
#fi

## source grc for colorizations
#if [[ -f "`brew --prefix grc`/etc/grc.bashrc" ]]; then
#    source "`brew --prefix grc`/etc/grc.bashrc"
#fi

#gcloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'

# set the number of open files to be 10240
ulimit -S -n 10240

# print a fortune when the terminal opens
fortune -a -s | lolcat

#powerline
#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
