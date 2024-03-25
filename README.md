# Projet-base-de-donnees-MYSQL-Csharp
Dans le cadre de notre projet d'informatique scientifique, nous avons modélisé notre base de données MySQL pour une application de gestion de vente de fleurs en ligne. Nous avons créé plusieurs tables pour stocker les informations nécessaires.


MYSQL :
La table Clients contient des informations sur les clients, tels que leur nom, prénom, numéro de téléphone, adresse e-mail (unique), mot de passe, adresse de facturation, numéro de carte de crédit et leur statut.

La table Commandes stocke des informations sur une commande passée, l'identifiant du client, l'identifiant du magasin, la date de création de la commande, l'adresse de livraison, le message accompagnant, la date de livraison.
La table Statuts_Commandes contient les différents états possibles d'une commande, tels que "VINV", "CC", "CPAV", "CAL" et "CL", ainsi que la date de chaque changement d'état.
Ainsi, on peut alors retracer facilement les différents états d’une commande ainsi que les dates de mise à jour, ce qui est utile pour consulter le suivi d’une commande par un client.

La table Magasins stocke les informations sur les magasins, leur nom et leur adresse.

La table Produits contient des informations sur les produits, y compris leur nom, leur prix et leur catégorie (bouquet standard, fleur ou accessoire).

La table Bouquets_Standards stocke les informations spécifiques aux bouquets standards, comme la composition des fleurs et leur catégorie. L’id des bouquets est le même que l’id les bouquets inscrits dans produits afin de faciliter le code C#. Cette table n’intervient pas réellement dans le code, mais elle permet de stocker les informations du bouquet, composition, catégorie.
La table Fleurs contient des informations sur la disponibilité de chaque fleur. De plus. l’id des fleurs est le même que l’id les fleurs inscrits dans produits afin de faciliter le code C#. Cette table n’intervient pas réellement dans le code, mais elle permet de stocker l’information de disponibilité de la fleur.

La table Inventaire_Magasin stocke les informations sur l'inventaire de chaque magasin tels que l'identifiant du produit et la quantité disponible. Ainsi, chaque row représente la quantité d’un produit dans un magasin.

Enfin, la table Commandes_Produits relie les commandes aux produits commandés, y compris l'identifiant de la commande, l'identifiant du produit et la quantité commandée, cette table représente les lignes de commandes d’une commande. Ainsi, une personne peut commander plusieurs fleurs, plusieurs accessoires pour un arrangement floral tout en évitant de créer une autre table arrangement floral.

Comme on peut le constater, il n’y a pas de tables accessoires pour la seule et bonne raison qu’on a aucune autre information concernant un accessoire à part son nom et son prix. Ainsi, on peut le garder directement dans la table produit évitant ainsi de créer une nouvelle table.


C# :
Le projet en C# contient 6 classes différentes dont 4 classes très importantes :

Program : Afin d'exécuter l’application
Employé : Interface employé, toutes les méthodes concernant l’employé se trouvent ici, il n’y a pas de variable Employé.
Chef : Interface propriétaire, toutes les méthodes concernant le propriétaire se trouvent ici, il n’y a pas de variable propriétaire.
Clients : Interface client, toutes les méthodes concernant le client se trouvent ici.
Pixel et MyImage : deux classes du dernier projet afin de permettre d’afficher des images pour avoir une meilleure esthétique.

On peut de plus créer une variable client afin de faciliter les méthodes utilisées dans cette classe.
Les différentes classes ont été créées dans le but d’avoir un code lisible et plus agréable à travailler.


Au début du programme, l’utilisateur doit choisir qui il est, le client, l'employé ou le propriétaire. Ainsi selon ce qu’il choisit, il aura accès à différentes options :

Clients:
Créer un compte
Se connecter (mail, mdp)
Consulter l'état des commandes, historique des différents états
Acheter un bouquet standard avec un délai supérieur à 3 jours, ainsi le stock du magasin diminue directement ou avec un délai inférieur à 3 jours, ainsi la commande est une commande VINV où l’employé vérifie la commande comme demandé dans la consigne. Acheter un arrangement floral :
Si le client sait de manière précise ce qu’il souhaite acheter il pourra choisir selon le stock à disposition sinon il peut écrire seulement ce qu’il souhaite avoir et le prix maximum à payer, ainsi la commande obtient l'état CPAV et l’employé choisit alors ce qu’il souhaite mettre.
Modifier les informations personnelles
Supprimer son compte

Employé :
Le propriétaire se connecte avec les identifiants employé/employé. Consulter les commandes en cours et modifier état de livraison
2
 Modifier état CPAV, l’employé peut choisir une commande CPAV et ensuite choisit le nombre de produits dans la commande
Modifier état VINV, l’employé peut choisir une commande VINV et ensuite choisit le nombre de produits dans la commande
Augmenter le stock

Propriétaire:
Le propriétaire se connecte avec les identifiants admin/admin. Cette classe permet de consulter toutes les statistiques des magasins et permet d’avoir des graphiques pour certaines statistqiues. Nous avons décidé de pouvoir consulter les statistiques d’un magasin uniquement(Les douces fleurs de Sarah ou Les belles fleurs de Marie), ou des deux magasins, quel que soit le mois ou l’année 2023.
Nous pouvons d’ailleurs consulter les statistiques une par une avec le menu ou alors directement obtenir des tableaux excel avec toutes les statistiques. Bien évidemment, le propriétaire choisit le mois ou l’année ou le magasin de son choix.

Pour les exigences de commandes, l'union, l’auto-jointure et la synchronisation se trouvent dans la classe chef.
L'union se trouve dans la méthode de calcul du chiffre d'affaires de toutes les boutiques. L’auto-jointure se trouve dans la méthode qui calcul si les objets se trouvent en quantité égale dans les 2 boutiques.
La synchronisation se trouve dans la méthode dessous moyenne qui calcul le nombre d’objets dont la quantité est inférieure à la moyenne des deux boutiques (en nombre de cet objet).
Ce choix d’avoir une interface avec des images est dans un but esthétique.

Grossièrement, une commande se passe de la manière suivante :
Un client se connecte/crée un compte et choisit de passer une commande, il a le choix entre plusieurs types de commande. Une fois qu’il remplit le bon de commande, les produits sélectionnés diminuent directement dans le stock magasin choisi à part si c’est une commande personnalisée non précisée ou un une commande de bouquets avec un délai de livraison de moins de 3 jours où c’est l’employé qui décide/accepte la commande et ainsi le stock diminue une fois validé par l’employé. L’état des commandes change alors et passe à l’état CC. L’employé peut ensuite mettre un nouvel état pour la commande, CAL, CL. Le propriétaire peut ensuite consulter l'avancée des commandes des clients et les statistiques liées au magasin, des graphiques peuvent s’afficher ainsi que des tableaux excels.

Nous n’avons pas fait de Windows Form dû à une différence de système d’exploitation de nos ordinateurs différent ce qui complique les tâches, c’est pour cela qu’on a essayé de faire un maximum de méthodes, d'images à afficher et d’innovations comme les tableaux excels.
