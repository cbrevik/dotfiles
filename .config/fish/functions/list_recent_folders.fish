function list_recent_folders -d "List the 30 most recent visited folders"
  z --recent --list | head -n 30
end

