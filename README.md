# TermChat 
Application de chat depuis le terminal

## Prérequis
Vous devez être à jour
```
sudo apt-get update && apt-get upgrade
```
Avoir nc
```
sudo apt install nc
```
Avoir ncat
```
sudo apt install ncat
```

Donner les droits d'éxecution aux fichier d'installations
```
chmod +x install.sh uninstall.sh update.sh
```

## Installation
Si vous n'avez pas de version installée
Executez le fichier 'install.sh' 
```
./install.sh
```

## Désinstallation 
Si vous voullez désinstaller l'application
Executez le fichier 'uninstall.sh' 
```
./uninstall.sh
```

## Mise à jour depuis une ancienne version
Si vous voullez mettre à jour votre installation vers une version plus récente
Executez le fichier 'update.sh'
```
./update.sh
```

## Utilisation
Pour utiliser le TermChat tout se fait avec la commande : 
```
tc
```

Pour voir la page d'aide, faites la commande : 
```
tc -h
```

> Example Simple d'utilisation
> 
> Un utilisateur héberge le chat
> ```
> tc host
> ```
> (Un port est spécifié, par défault c'est le 8080, inutile de le changer si vous ne savez pas ce que vous faites)
>
> L'hébergeur ouvre ensuite un second terminal, les personnes voulant participer ouvrent elles aussi un temrinal et rejoignent le chat
> ```
> tc join
> ```
> L'adresse IP et le port sont ensuite demandés (elle est spécifié sur le terminal qui host)
>
> La connexion s'éttablie et vous pouvez donc parler


## ATTENTION
Si vous souhaitez ajouter des aliases dans le fichier ~/.bash_aliases, ajoutez les à la fin du fichier ! et ne touchez pas aux deux premières lignes du fichier.

Après l'installation rédamarrer votre terminal (ou ouvrez en un autre) afin de charger les alias et pouvoir utiliser les commandes

Vous pouvez déplacer le dossier dans lequel sont rangés install.sh et uninstall.sh mais les fichier et dossiers contenus dans celui-ci doivent toujours rester dans le même dossier

### By @k_zymirr
