source ./code/colors.sh


if [ -d ~/.config/TermChat ]
then
	write $Red "[ERREUR]";
	write $White "Une installation de TermChat est détectée sur la machine";
else
	write $BWhite "Installation..."
 
	write $White "Accord des droits d'execution";
	chmod +x ./code/tc.sh;
	write $Green "[SUCCES]";

	write $White "Création du répertoire d'éxecution";
	mkdir ~/.config/TermChat;
	mkdir ~/.config/TermChat/data;
	write $Green "[SUCCES]";

	write $White "Ajout des fichier d'éxecution";
	cp ./code/* ~/.config/TermChat;
	chmod -x ./code/tc.sh;
	write $Green "[SUCCES]";

	write $White "Stockage de l'adresse IP";
	hostname -I > ~/.config/TermChat/data/ip.kzi;
	write $Green "[SUCCES]";

	write $White "Mise à jour des alias";
	cat ~/.bash_aliases > ~/.config/TermChat/data/oldAliases.kzi;
	echo "alias 'tc'='~/.config/TermChat/tc.sh'" > ~/.bash_aliases;
	echo " " >> ~/.bash_aliases;
	cat ~/.config/TermChat/data/oldAliases.kzi >> ~/.bash_aliases;
	write $Green "[SUCCES]";

	write $White "Notes de mise à jour";
	echo "Date : $(date -I)" > ~/.config/TermChat/data/note.kzi;
	echo "Version : 1.0" >> ~/.config/TermChat/data/note.kzi;
	write $Green "[SUCCES]";
fi
