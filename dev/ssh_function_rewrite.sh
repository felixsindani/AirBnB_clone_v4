# bash function that adds new argument to ssh called 'holberton'
# must add this to bash .profile (or .bashrc) config file
# after edits run $ source ~/.bashrc

ssh() {
    if [[ "$@" == "holberton" ]]; then
	echo "   .. Which Server?? .."
	echo ""
	echo "(1) 310828-web-01 = 18.235.233.229"
	echo "(2) 310828-web-02 = 54.236.47.100"
	echo "(3) 310828-lb-01 = 100.25.20.105"
	echo " EXIT: any other number to quit"
	echo ""
	read -p "Please Enter the # for the server: " -n 1 -r IPADDRESS
	echo ""
	echo "... please wait"
	if [[ "$IPADDRESS" == 1 ]]; then
	    command ssh ubuntu@18.235.233.229 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 2 ]]; then
	    command ssh ubuntu@54.236.47.100 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 3 ]]; then
	    command ssh ubuntu@100.25.20.105 -i ~/.ssh/holberton
	elif [[ "$IPADDRESS" == 4 ]]; then
	    echo ""
	    read -p "what is the port #? " port
	    command ssh root@34.206.234.184 -p "$port"
	else
	    echo ""
	    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
	fi
    else
	command ssh "$@"
    fi
}
