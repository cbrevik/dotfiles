function delete_tail -d "Delete last line of file"
    if not test -e $argv[1]
        echo "No file name $argv[1]"
    else
        tail -n 1 "$argv[1]" | wc -c | xargs -I {} truncate "$argv[1]" -s -{}
    end
end

