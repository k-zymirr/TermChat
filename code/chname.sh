function chName () {
	echo "Entrez un nom d'utilisateur";
       	read -p "Username (un seul mot): " username;
       	sed -i 17d ~/.config/TermChat/join.sh
	sed -i 17d ~/.config/TermChat/join.sh
	beg="'"'$''0''=''"';
        end='"''$''0'"'";
        echo "	mawk -W interactive $beg$username: $end | nc "'$''1' '$''2'";" >> ~/.config/TermChat/join.sh;
        echo "}" >> ~/.config/TermChat/join.sh;
}

