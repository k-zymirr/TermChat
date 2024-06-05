source ~/.config/TermChat/colors.sh
source ~/.config/TermChat/host.sh
source ~/.config/TermChat/join.sh
source ~/.config/TermChat/chname.sh


if [ ! -d ~/.config/TermChat ]
then
	write $Red "[ERREUR]";
	write $White "Aucune installation détectée";
else
	if [ -z $1 ]
	then
		write $Red "[ERREUR]";
		write $White "Aucun argument ('tc -h' pour la page d'aide)";
	else
		if [ ! -z $3 ]
		then
			write $Red "[ERREUR]";
			write $White "Trop d'arguments, maximum 2 sont autorisés ('tc -h' pour la page d'aide)";
		elif [ $1 == "-h" ]
		then
			write $BBlue "TermChat";
			write $White "Service de chat depuis le terminal";
			write $Blue "Utilisation";
			write $White "Au minimum deux utilisateurs pour pouvoir l'utiliser";
			write $White "Un utilisateur devras faire la commande 'tc host'  (voir 'tc host -h' pour la page d'aide)";
			write $White "Il devras ensuite laisser le terminal touner et en ouvrir un autre";
			write $White "Dans ce nouveau terminal ainsi que tous les autres utilisateurs souhaitants se connecter au chat, il devras faire la commande 'tc join' (voir 'tc join -h' pour la page d'aide)";
		elif [ $1 == "chname" ]
		then
			chName;
		elif [ $1 == "host" ]
		then
			write $BPurple "HOST";
			resW;
			if [ -z $2 ]
			then
				read -p "Port (default 8080) : " port;
				if [ -z $port ]
				then
					port=8080;
				fi
				write $Purple $port;
				resW;
				host $port;
			elif [ $2 == "-h" ]
			then
				hostHelp;
			fi
		elif [ $1 == "join" ]
		then
			write $BCyan "JOIN";
			resW;
			if [ -z $2 ]
			then
				read -p "Adresse IP : " ip;
				write $Cyan $ip;
				resW;
				read -p "Port : " port;
				write $Cyan $port;
				resW;
				if [[ -z $ip || -z $port ]]
				then
					write $Red "[ERREUR]";
					write $White "Tous les champs doivent être remplits";
				else
					join $ip $port;
				fi
			elif [ $2 == "-h" ]
			then
				joinHelp;
			fi
		else
			write $Red "[ERREUR]";
			write $White "Agument non prit en charge ('tc -h' pour la page d'aide)";
		fi
	fi
fi

resW;
