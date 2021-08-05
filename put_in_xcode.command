# Colors

GRAY="\033[1;30m"
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
PURPLE="\033[1;35m"
TURQUOISE="\033[1;36m"
WHITE="\033[1;37m"
RESET="\033[0m"

# Functions

redOutput () {
    redText="$RED$1$RESET"
}

grayOutput () {
    grayText="$GRAY$1$RESET"
}

greenOutput () {
    greenText="$GREEN$1$RESET"
}

yellowOutput () {
    yellowText="$YELLOW$1$RESET"
}

whiteOutput () {
    whiteText="$WHITE$1$RESET"
}

turquoiseOutput () {
    turquoiseText="$TURQUOISE$1$RESET"
}

purpleOutput () {
    purpleText="$PURPLE$1$RESET"
}

blueOutput () {
    blueText="$BLUE$1$RESET"
}

introHeader () {
    purpleOutput "Afya"
    whiteOutput "\n  Squad Nativo iOS - $purpleText\n"
    
    echo $whiteText
    
    yellowOutput $TEMPLATES_PATH
    whiteOutput " Copying all template folders to $yellowText\n"
    
    echo $whiteText
}

loaderAnimation () {
    FOLDER_NAME=$1
    
    yellowOutput "- "
    turquoiseOutput "\\\\ "
    blueOutput "| "
    greenOutput "/ "
    
    spin[0]=$yellowText
    spin[1]=$turquoiseText
    spin[2]=$blueText
    spin[3]=$greenText
    
    counter="0"
    
    printf  "\b[copying] ${spin[0]}\r"
    
    while [ $counter -lt 10 ]
    do
        for i in "${spin[@]}"
        do
            blueOutput $i
            
            printf "\b  $i \bcopying $FOLDER_NAME\r"
            
            sleep 0.09
            
            if [ $counter -eq 9 ]
            then
                printf "\s✅  \bcopying $FOLDER_NAME\r"
            fi
        done
        counter=$[$counter + 1]
    done
}

# Variables

TEMPLATES_PATH=~/Library/Developer/Xcode/Templates

# Script Header

introHeader

# Create folder if it doens't exist

mkdir -p $TEMPLATES_PATH

# Loop through all files in the repository folder

for folder in *
do
    if [ "$(echo $folder | grep -E ".*\..*")" == "" ]
    then
        yellowOutput $folder
        loaderAnimation $yellowText
        echo $yellowText
        
        # Copy current folder from repository to xCode
        cp -R $folder $TEMPLATES_PATH
    fi
    
    
done

# Success message

whiteOutput "All templates copied successfully to"
yellowOutput $TEMPLATES_PATH

echo "\n$whiteText $yellowText\n"
