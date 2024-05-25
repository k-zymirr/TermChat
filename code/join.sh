source ~/.config/TermChat/colors.sh


function joinHelp () {
	write $White "Rejoindre un salon de chat en terminal";
	write $Cyan "Utilisation";
	write $White "tc join";
	write $White "L'adresse IP vous seras alors demandée (demandez là à l'hébergeur du salon)";
	write $White "C'est ensuite le port utilisé qui vous seras demandé (demandez à l'hébergeur encore une fois)";
}

function join () {
	write $BCyan "Tentative de connexion au salon...";
	resW;
	write $UCyan "IP :$White $1";
	write $UCyan "Port :$White $2";
	nc $1 $2;
}

