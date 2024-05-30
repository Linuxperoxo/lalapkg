#!/bin/bash
#========================|VAR
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m'

INPUT='0'
#========================|VERIFY
if [ ! "$(whoami)" = 'root' ]; then
	echo "U are root?"
	exit
fi
#========================| FUNC
function INSTALL()
{
	if [ ! -f './lalapkg' ] || [ ! -f './lalapkg.conf' ]; then
		git clone https://github.com/Linuxperoxo/lalapkg.git
		cd lalapkg
	fi

	cp -v 'lalapkg'  '/usr/bin/'
	chmod 755 '/usr/bin/lalapkg'

	cp -v 'lalapkg.conf' '/etc/'
	chmod 666 '/etc/lalapkg.conf'
}

function REMOVE()
{
	rm -v '/usr/bin/lalapkg'
	rm -v '/etc/lalapkg.conf'
}
#========================| MAIN
case "$1" in
	--install)
		if [ -f '/usr/bin/lalapkg' ] && [ -f '/etc/lalapkg.conf' ]; then
			while true; do
				echo -n -e ">>> ${YELLOW}WARNING${NC}: Lalapkg is installed on your system. Do you want to reinstall? y/N "
				read INPUT
				echo
				case "$INPUT" in
					Y|y)
						break
					;;

					N|n|'')
						exit 0
					;;

					*)
						continue
					;;
				esac
			done
		fi
		INSTALL	&& echo && echo -e ">>> ${GREEN}Installed successfully. Thank you for using lalapkg :^) ${NC}" && exit 0
                echo -e ">>> ${RED}An error occurred during installation :^( ${NC}"
                exit 1
	;;

	--remove)
		REMOVE && echo && echo -e ">>> ${GREEN}Successfully removed${NC}" && exit 0
		echo && echo -e ">>> ${RED}Error during removal${NC}"
		exit 1
	;;

	*)
		echo "Use --install or --remove"
		exit  0
	;;
esac
