termux-setup-storage
R () {
	cd $PREFIX/bin
	if [ -e python ];then
	#cd ~/Termux-Hack-2
	#cd /sdcard/Gith*
	cd ~/youtube
	echo -e "\033[0m"
	python .random.py
	fi
	}
	set () {
		R
		printf "\n\n Installing..\n"
		apt update
		apt upgrade
		apt install python
		apt install figlet
		apt install wget
		cd ~/youtube-video-download
		pip install -r requirement.txt
		cd /sdcard
		mkdir youtube
		}
		menu () {
			R 
                         figlet YOUTUBE 
                         figlet DOWNLOADER
                                                                                                                                                                                                "
			echo
			R
			echo -e -n "Fadlan gali link video =>"
			read a
			if [ ! -z $a ];then
			cd /sdcard/youtube
			youtube-dl $a
			R
			printf "\nSaved ( /sdcard/youtube )"
			fi
			}
			cd /sdcard
			if [ -e youtube ];then
			menu
			else
			set
			fi
