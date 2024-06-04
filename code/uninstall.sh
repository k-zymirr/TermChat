source ./code/colors.sh


if [ ! -d ~/.config/TermChat ]
then
	write $Red "[ERREUR]";
	write $White "Aucune installation détectée";
else
	write $BWhite "Désinstallation...";

	write $White "Suppression des aliases";
	cat ~/.bash_aliases > ~/.config/TermChat/data/oldAliases.kzi;
	sed -i 1d ~/.config/TermChat/data/oldAliases.kzi;
	sed -i 1d ~/.config/TermChat/data/oldAliases.kzi;
	cat ~/.config/TermChat/data/oldAliases.kzi > ~/.bash_aliases;
	write $Green "[SUCCES]";

	write $White "Suppression du repertoire d'execution";
	rm -dr ~/.config/TermChat;
	write $Green "[SUCCES]";
fi
