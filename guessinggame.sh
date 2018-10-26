function printWrongGuessMessage()
{
    if [[ uip -lt $num_files ]]; then
	echo "guess again. go higher"
    else
	echo "guess again. go lower"
    fi    
}

function getNumFiles()
{
    local script_name=$(readlink -f $0)
    local path=$(dirname $script_name)
    num_files=$(( $(ls -l $path | grep -vE '^d' | wc -l)-1))
}

echo -n "Enter number of files: "
read num_files

#getNumFiles
echo "guess how many files in this directory"

while read uip; do
    if [[ uip -eq $num_files ]]; then
	echo "congratulations!!"
	break
    else
	printWrongGuessMessage
    fi
done

