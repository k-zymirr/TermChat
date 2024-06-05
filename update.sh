source ./code/colors.sh


if [ ! -d ~/.config/TermChat ]
then
	write $Red "[ERREUR]";
	write $White "Aucune installation détectée";
else
    write $BWhite "Mise à jour...";

    ./uninstall.sh;
    ./install.sh;
fi
