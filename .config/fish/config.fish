abbr ga 'git add'
abbr gs 'git status'
abbr gb 'git branch'
abbr gcom 'git commit'
abbr gd 'git difftool --no-prompt'
abbr gdd 'git difftool --dir-dif'
abbr gco 'git checkout'
abbr gpr 'git pull --rebase'
abbr gr 'git rebase'
abbr rn 'react-native'
abbr mk 'minikube'

function paste-into-file
    if test -d $argv
        echo "No argument provided"	
    else
        if not test -e $argv[1]
            touch $argv[1]
        else
            echo "" >> $argv[1]
        end
        pbpaste >> $argv[1]
    end
end
abbr pif 'paste-into-file'

function reload
    source ~/.config/fish/config.fish
end
