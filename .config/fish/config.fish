abbr k 'kubectl'
abbr ga 'git add'
abbr gs 'git status'
abbr gb 'git branch'
abbr gcom 'git commit'
abbr gd 'git difftool --no-prompt'
abbr gdd 'git difftool --dir-diff'
abbr gco 'git checkout'
abbr gpr 'git pull --rebase'
abbr gpo 'git pull origin'
abbr gppo 'git push origin'
abbr gr 'git rebase'
abbr yad 'rm -rf node_modules && yarn'
abbr gf 'git fixup'
abbr gfix 'git add -A && git fixup'
abbr kga 'kubectl get all'
abbr kcg 'kubectl config get-contexts'

# pyenv for handling Python installations
pyenv init - | source

# jenv for handling Java installations
jenv init - | source

# z jump command init
zoxide init fish | source

# ruby env
status --is-interactive; and rbenv init - fish | source
