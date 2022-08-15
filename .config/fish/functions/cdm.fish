function cdm -d "mdkir and cd into dir"
    if test -d $argv
        echo "No argument provided"	
    else
        mkdir -p $argv[1] 
        cd $argv[1]
    end
end