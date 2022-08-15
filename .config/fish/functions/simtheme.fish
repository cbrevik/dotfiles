function simtheme -d "Switch sim theme"
    if test -d $argv
        echo "No argument provided"	
    else
        xcrun simctl ui booted appearance $argv[1]
    end
end