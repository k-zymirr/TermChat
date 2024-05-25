source ~/.config/TermChat/colors.sh


function hostHelp () {
	write $White "Héberger un salon de chat en terminal";
	write $Purple "Utilisation";
	write $White "tc host";
	write $White "Le port à utiliser vous seras ensuite demande. Le port 8080 est utilisé par défault, si vous souhaitez le changer entrez le nouveau port sinon n'entrez rien.";
}

function host () {
	write $BPurple "Initialisation de la connexion...";
	resW;
	write $UPurple "IP :$White $(cat ~/.config/TermChat/data/ip.kzi)";
	write $UPurple "Port :$White $1";
	ncat -nvlp $1 --broker;
}

