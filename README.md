# DockerApp
Dans ce projet, j'ai créer un environnement comportant MySQL, phpMyAdmin, PHP et Apache.

Pour cela, j'ai utilisé le fichier docker.compose.yml qui va comporter :

-Services : Container qui peuvent permettrent d'être associer à 1 ou plusieurs containers. Ici, il y aura 4 services chacun associer à 1 container.

-Images : Les images contiennent tout ce dont j'ai besoin pour la création des container. Les images pour MySQL, PhpMyadmin PHP ayant déjà été créer j'ai donc créer un fichier Dockerfile qui a généré l'image d'Apache après avoir réalisé la commande : "docker build -t"

-Volumes : Récupérer les données des container dans un fichier local de mon dossier afin de pouvoir les récupérer.

-Depends on : Des dépendances seront définies via les services afin de savoir dans quel ordre ils devront s'arrêter et démarrer.

-Environnement: Les variables d'environnement que j'ai utilisé pour définir les accès à MySQL et PHPMyadmin

-Container_name: Le nom des container qui ont été créés

-Port: Le port sur lequel tourne les container

Après cette configuration il me suffisait juste de faire la commande "docker-compose up -d" afin de créer tous les containers et de tester chacun des services.
