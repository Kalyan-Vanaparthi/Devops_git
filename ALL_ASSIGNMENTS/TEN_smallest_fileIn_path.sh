echo "printing the 10 smallest file"

path= "$1"

du -ah | sort -h | head -n 10

