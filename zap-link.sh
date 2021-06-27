if [ $? -eq 0 ]; then
    just
else
    clear
    echo -e "\e[1;91m‎‎‏‏ ‎"
    printf '''
 ____  ____  ____    _     _  _      _  __
/_   \/  _ \/  __\  / \   / \/ \  /|/ |/ /
 /   /| / \||  \/|  | |   | || |\ |||   /
/   /_| |-|||  __/  | |_/\| || | \|||   \
\____/\_/ \|\_/     \____/\_/\_/  \|\_|\_\


    zapzap api (chats link)
    '''
    sleep 1
    echo ""
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m você não está conectado à internet! !\e[93m"
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m por favor, conecte-se e tente novamente KKKKK  !! !!\e[93m"
    echo ""
    echo ""
    exit
fi
clear
f=9
for var in f ; do
for col in {1..7} ; do
printf -v $var$col %b "\x1b[${!var}${col}m"
done
done
echo -e "\e[92m "
printf '''

:::::::::     :::     :::::::::       :::        ::::::::::: ::::    ::: :::    ::: 
     :+:    :+: :+:   :+:    :+:      :+:            :+:     :+:+:   :+: :+:   :+:  
    +:+    +:+   +:+  +:+    +:+      +:+            +:+     :+:+:+  +:+ +:+  +:+   
   +#+    +#++:++#++: +#++:++#+       +#+            +#+     +#+ +:+ +#+ +#++:++    
  +#+     +#+     +#+ +#+             +#+            +#+     +#+  +#+#+# +#+  +#+   
 #+#      #+#     #+# #+#             #+#            #+#     #+#   #+#+# #+#   #+#  
######### ###     ### ###             ########## ########### ###    #### ###    ### 


                                  ▄▄█▀▀▀▀▀█▄▄
                                ▄█▀░░▄▄░░░░░▀█
                                █░░░███░░░░░░░█
                                █░░░██▄░░░░░░░█
                                █░░░░▀██▄░██░░█
                                █░░░░░░▀███▀░░█
                                ▀█▄░░░░░░░░░▄█▀
                                ▄█░░░▄▄▄▄█▀▀
                                █░░▄█▀
                                ▀▀▀▀

                           zapzap api (chat link)
 '''
sleep 1
echo -e "                              \e[36mbydeathlxncer"
printf "\n"
printf "%s[%s@%s] %scoloque o número %s: %s" ${f2} ${f7} ${f2} ${f7} ${f5} ${f6}
read nomor
nomor=$(echo $nomor | sed 's/^0/62/g')
printf "%s[%s@%s] %sinsira um texto   %s: %s" ${f2} ${f7} ${f2} ${f7} ${f5} ${f6}
read text
text=$(echo $text | tr [[:space:]] '+' | sed 's/+$//g')
link="https://api.whatsapp.com/send?phone=$nomor&text=$text"
printf "\n"
printf "%s[%s*%s] %slink %s:%s %s" ${f4} ${f2} ${f4} ${f6} ${f5} ${f7} "$link"
echo ""
echo ""
printf "\e[1;92m[\e[0m1\e[1;92m]\e[0m\e[1;39m abrir url \e[0m\n"
printf "\e[1;92m[\e[0m2\e[1;92m]\e[0m\e[1;39m vazar do script \e[0m\n"
printf "\n"
read -p $'\e[1;92m[\e[0m~\e[1;92m]\e[0m\e[1;39m \e[96mescolha uma opção \e[0m>>> ' options
if [ "$options" -eq "1" ];then
termux-open-url "$link"
echo ""
echo -e "\e[93mse e foda parceiro !"
echo ""
fi
if [ "$options" -eq "2" ];then
echo ""
echo -e "\e[1;91m‎‎‏‏ me segue no github garai
https://github.com/bydeathlxncer !"
echo ""
exit
fi
