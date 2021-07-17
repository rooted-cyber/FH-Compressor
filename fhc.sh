clear
if [ -e "$PREFIX/bin/pv" ];then
echo
else
apt install pv
fi
clear
printf "\n\033[1;92m\t\t Starting FH-Compressor\n\n"
sleep 1
echo -e -n "\033[1;93m Enter file location : \033[0m"
read ab
if [ "$ab" ];then
cs=$(du -hs $ab)
naam=$(ls | grep -e "all")
printf "\n\033[1;91m[+]\033[1;92m Checking file....\n" | pv -q -pL 5
printf "\n\033[1;91m[+]\033[1;92m Checking file size : \033[0m $cs \n" | pv -q -pL 5
printf "\n\033[1;91m[+]\033[1;92m Your file name : \033[0m $naam\n" | pv -q -pL 6
printf "\n\033[1;91m[+]\033[1;92m Canging Compression value \n" | pv -q -pL 4
sleep 3
printf "\n\n\t\033[1;92m Successfully , Now you can compress this file.\n" | pv -q -pL 5

fi
