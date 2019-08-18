function fpass -d "Fuzzy-find a Lastpass entry and copy the password"
  if not lpass status -q
    echo 'Login with Lastpass first: lpass login your@email.com'
    return 0
  end

  lpass ls -l | fzf | string replace -r -a '.+\[id: (\d+)\].+' '$1' | read -l result; and lpass show -c --password "$result"
end