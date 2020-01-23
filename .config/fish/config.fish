set -x LC_ALL en_US.UTF-8
set -gx PATH $PATH $HOME/.cargo/bin
set -gx PATH $PATH $HOME/.dotnet/tools
set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx ANDROID_HOME $HOME/Library/Android/sdk

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
abbr rn 'npx react-native'
abbr rnios 'npx react-native run-ios'
abbr rnandroid 'npx react-native run-android'
abbr mk 'minikube'
abbr sim 'open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
abbr d 'docker'