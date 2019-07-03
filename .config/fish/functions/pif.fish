function pif -d "Paste into file"
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