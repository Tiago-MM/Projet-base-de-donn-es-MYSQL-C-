-- Création de la table Clients
CREATE DATABASE FLEURS1;
USE FLEURS1;
-- Création de la table Clients
CREATE TABLE Clients (
    id INT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    telephone VARCHAR(20),
    courriel VARCHAR(255) UNIQUE NOT NULL, -- Unique 
    mot_de_passe VARCHAR(255) NOT NULL,
    adresse_facturation VARCHAR(255) NOT NULL,
    carte_credit VARCHAR(16) NOT NULL,
    statut_fidélité ENUM('OR', 'BRONZE', 'AUCUN') NOT NULL DEFAULT 'AUCUN'
);

-- Création de la table Magasins
CREATE TABLE Magasins (
    id INT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL
);

-- Création de la table Commandes
CREATE TABLE Commandes (
    id INT PRIMARY KEY,
    id_client INT,
    id_magasin INT,
    date_creation DATETIME NOT NULL,
    adresse_livraison VARCHAR(255),
    message_accompagnant VARCHAR(255),
    date_livraison DATETIME NOT NULL,
    FOREIGN KEY (id_client) REFERENCES Clients(id),
    FOREIGN KEY (id_magasin) REFERENCES Clients(id)
);

-- Création de la table Statuts_Commandes
CREATE TABLE Statuts_Commandes (
    id INT PRIMARY KEY,
    id_commande INT,
    code_etat ENUM('VINV', 'CC', 'CPAV', 'CAL', 'CL') NOT NULL,
    date_etat DATETIME,
    FOREIGN KEY (id_commande) REFERENCES Commandes(id)
);

-- Création de la table Produits
CREATE TABLE Produits (
    id INT PRIMARY KEY,
    nom VARCHAR(255),
    prix DECIMAL(10, 2),
    categorie ENUM('BOUQUET_STANDARD', 'FLEUR', 'ACCESSOIRE') NOT NULL
);

-- Création de la table Bouquets_Standards
CREATE TABLE Bouquets_Standards (
    id INT PRIMARY KEY,
    composition_fleurs VARCHAR(120),
    catégorie VARCHAR(60),
    FOREIGN KEY (id) REFERENCES Produits(id)
);

-- Création de la table Fleurs
CREATE TABLE Fleurs (
    id INT PRIMARY KEY,
    disponibilite VARCHAR(255),
    FOREIGN KEY (id) REFERENCES Produits(id)
);

-- Création de la table Inventaire_Magasin
CREATE TABLE Inventaire_Magasin (
    id INT PRIMARY KEY,
    id_magasin INT,
    id_produit INT,
    quantite INT,
    FOREIGN KEY (id_magasin) REFERENCES Magasins(id),
    FOREIGN KEY (id_produit) REFERENCES Produits(id)
);

-- Création de la table Commandes_Produits
CREATE TABLE Commandes_Produits (
    id INT PRIMARY KEY,
    id_commande INT,
    id_produit INT,
    quantite INT,
    FOREIGN KEY (id_commande) REFERENCES Commandes(id),
    FOREIGN KEY (id_produit) REFERENCES Produits(id)
);


