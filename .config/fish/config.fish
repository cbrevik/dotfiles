set -x LC_ALL en_US.UTF-8
set -gx ANDROID_HOME $HOME/Library/Android/sdk
set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx PATH $PATH $ANDROID_HOME/tools
set -gx PATH $PATH $ANDROID_HOME/tools/bin
set -gx PATH $PATH $ANDROID_HOME/platform-tools
set -gx PATH $PATH $HOME/.cargo/bin
set -gx PATH $PATH $HOME/.dotnet/tools
set -gx PATH $PATH $HOME/flutter/bin
set -gx PATH $PATH /Library/Frameworks/Python.framework/Versions/3.8/bin/
set -gx GOOGLE_APPLICATION_CREDENTIALS /Users/christianbrevik/.config/gcloud/application_default_credentials.json

status --is-interactive; and source (rbenv init -|psub)

 set -g -x "CLOUDSDK_PYTHON" "/usr/local/opt/python@3.8/libexec/bin/python"
    source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

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
abbr y 'yarn'
abbr ql 'quicklook'
abbr recent 'list_recent_folders'
abbr podi 'cd ios; pod install; cd ..' 
abbr yad 'rm -rf node_modules && yarn'
abbr bd 'pbpaste | openssl base64 -d | pbcopy'
abbr be 'pbpaste | openssl base64 -e | pbcopy'set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/ruby/bin" $fish_user_paths

thefuck --alias | source
rvm default
status --is-interactive; and source (jenv init -|psub)
