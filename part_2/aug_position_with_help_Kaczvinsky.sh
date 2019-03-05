#needs to take 3 arguments and print them in reverse order
case $@ in
    -h ) echo "A script that takes any three arguments and prints them in reverse order.";;
esac
echo "$3 $2 $1"
