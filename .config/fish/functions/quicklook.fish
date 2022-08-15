function quicklook -d "Quicklook media/image"
    if test -d $argv
        echo "No argument provided"	
    else
        qlmanage -p $argv[1] &> /dev/null
    end
end