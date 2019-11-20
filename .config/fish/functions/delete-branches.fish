function delete-branches -d "Fuzzy-find and delete branches"
  git branch --all | grep -v HEAD | string trim | fzf | read -l result; and git branch -D "$result"
end