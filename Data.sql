USE FLEURS1;


-- Insertion des données supplémentaires dans la table Clients
INSERT INTO Clients (id,nom, prenom, telephone, courriel, mot_de_passe, adresse_facturation, carte_credit, statut_fidélité)
VALUES (1,'White', 'Walter', '0234567890', 'walter.white@gmail.com', 'mdp1', '5 rue des Tulipes, 75001 Paris', '2345678901234567', 'OR'),
(2,'Freeman', 'Morgan', '0345678901', 'luc.durand@example.com', 'mdp2', '6 rue des Lilas, 75002 Paris', '3456789876545', 'BRONZE'),
(3,'Black', 'Jack', '0456789012', 'camille.moreau@example.com', 'azzdazd', '7 rue des Iris, 75003 Paris', '3456789765477', 'AUCUN'),
(4,'Clayton', 'Hugo', '0567890123', 'clayton.hugo@gmail.com', 'apapapsa', '8 rue des Pivoines, 75004 Paris', '345678763456', 'AUCUN'),
(5,'Bay', 'Michael', '0678901234', 'Bay.Michael@gmail.com', 'Azertyuiop', '9 rue des Orchidées, 75005 Paris', '34567545675', 'BRONZE'),
(6,'Chevronne', 'Emilia', '0678945634', 'Emilia@gmail.com', 'Tiagolepb', '9 bis rue de la monarchie, 75005 Paris', '1524377465387', 'BRONZE'),
(7,'Cadi', 'Nedi', '0698345675', 'Orni2003@gmail.com', 'FS92', '12 rue du restaurantpt, 75009 Paris', '1487254252536', 'AUCUN'),
(8,'Toucheletaureau', 'Tibo', '0612345654', 'Tibo@gmail.com', 'password', '14 rue du couturier, 75002 Paris', '1234587659278', 'AUCUN'),
(9,'Bavy', 'Claire', '0789564365', 'Clairebavy@gmail.com', 'Floflo', '11 rue de la fontaine, 75009 Paris', '9843234567543', 'AUCUN');


-- Insertion des données supplémentaires dans la table Magasins
INSERT INTO Magasins (id,nom, adresse)
VALUES (1,'Les douces fleurs de Sarah', '15 rue des Dahlias, 75011 Paris'),
(2,'Les belles fleurs de Marie', '16 rue des Violettes, 75012 Paris');


-- Insertion des données supplémentaires dans la table Commandes
INSERT INTO Commandes (id,id_client,id_magasin, date_creation, adresse_livraison, message_accompagnant, date_livraison)
VALUES (1,1,1, '2023/01/24', '32 rue de la rotonde, 75006 Paris', 'Svp donnez nous une bonne note', '2023/01/30'),
(2,1,1, '2023/02/07', '11 rue des pierres, 75007 Paris', 'Felicitations', '2023/02/14'),
(3,1,2, '2023/03/21', '12 rue des batignolles, 75008 Paris', 'Hb', '2023/03/29'),
(4,1,2, '2023/04/07', '12 rue des batignolles, 75008 Paris', 'Ma femme Clara', '2023/04/14'),
(5,1,2, '2023/04/15', '12 rue des batignolles, 75008 Paris', 'Ma femme Emilie', '2023/04/18'),
-- Walter White
(6,2,1, '2023/03/02', '10 rue des cigarettes, 75006 Paris', 'Merci', '2023/03/08'),
(7,2,1, '2023/01/25', '19 rue des feuilles, 75009 Paris', 'Super', '2023/01/30'),
(8,2,2, '2023/01/20', '19 rue des feuilles, 75009 Paris', 'Cool', '2023/01/30'),
-- Morgan Freeman
(9,3,1, '2023/04/01', '5 rue de la Liberté, 75008 Paris', 'Magnifique', '2023/04/04'),
(10,3,2, '2023/03/15', '15 rue du Bistro, 75003 Paris', 'Parfait', '2023/03/20'),
-- Jack Black
(11,4,2, '2023/02/12', '30 avenue des Champs-Élysées, 75008 Paris', 'Excellent', '2023/02/18'),
(12,4,2, '2023/04/10', '1 rue de la Paix, 75001 Paris', 'Génial', '2023/04/13'),
(13,4,1, '2023/03/22', '23 rue de vinci, 75011 Paris', 'Top', '2023/03/27'),
-- Hugo Clayton
(14,5,1,'2023/01/12', '18 rue de la république, 75001 Paris', 'Merci bien', '2023/01/17'),
-- Bay Michael
(15,6,1,'2023/02/12', '18 rue de la monarchie, 75001 Paris', 'Merci cest parfait', '2023/02/17'),
(16,6,1,'2023/04/14', '18 rue de la monarchie, 75001 Paris', 'Merci top', '2023/04/19'),
(17,6,2,'2023/01/11', '19 rue de la fontaine, 75009 Paris', 'Pour Clara', '2023/01/14'),
(18,6,2,'2023/02/19', '18 rue de la monarchie, 75001 Paris', 'Plaisir', '2023/02/27'),
-- Emilia Chevronne
(19,1,1, '2023/01/01', '19 rue des feuilles, 75009 Paris', 'merci chef', '2023/01/05'),
(20,7,1, '2023/01/04', '19 rue des rochers, 75009 Paris', 'Pour ma femme', '2023/01/10'),
(21,6,1, '2023/02/04', '19 rue des de la monarchie, 75009 Paris', 'Pour toi', '2023/02/10'),
(22,3,2, '2023/01/15', '15 rue du Bistro, 75003 Paris', 'Parfait merci beaucoup', '2023/01/20'),
(23,3,2, '2023/01/20', '15 rue du Bistro, 75003 Paris', 'Super fleurs', '2023/01/29'),
(24,4,2, '2023/02/20', '15 rue du de la Biere, 75007 Paris', 'Frere', '2023/02/27'),
(25,8,1, '2023/04/24', '19 avenue des champs, 75011 Paris', 'je taime', '2023/04/27'),
(26,6,1, '2023/04/20', '11 rue des chenes, 75018 Paris', 'Pour toi-60', '2023/04/30'),
(27,9,1, '2023/04/21', '19 rue des Michels, 75008 Paris', 'Pour Florian', '2023/04/29'),
(28,9,2, '2023/04/20', '19 rue des Michels, 75008 Paris', 'parfait bon travail', '2023/04/28'),
(29,2,2, '2023/04/25', '19 rue des Paix, 75008 Paris', 'Merci mv', '2023/04/28');
-- Autres

-- Insertion des données supplémentaires dans la table Statuts_Commandes
INSERT INTO Statuts_Commandes (id, id_commande, code_etat, date_etat)
VALUES (1,1, 'VINV', '2023/01/24'),
(2,1, 'CC', '2023/01/25'),
(3,1, 'CAL', '2023/01/27'),
(4,1, 'CL', '2023/01/30'),

(5,2, 'CPAV', '2023/02/07'),
(6,2, 'CC', '2023/02/09'),
(7,2, 'CAL', '2023/02/12'),
(8,2, 'CL', '2023/02/14'),

(9,3, 'CC', '2023/03/21'),
(10,3, 'CAL', '2023/03/25'),
(11,3, 'CL', '2023/03/29'),

(12,4, 'CPAV', '2023/04/07'),
(13,4, 'CC', '2023/04/010'),
(14,4, 'CAL', '2023/04/12'),
(15,4, 'CL', '2023/04/14'),

(16,5, 'VINV', '2023/04/15'),
(17,5, 'CC', '2023/04/16'),
(18,5, 'CAL', '2023/04/17'),
(19,5, 'CL', '2023/04/18'),

(20,6, 'CPAV', '2023/03/02'),
(21,6, 'CC', '2023/03/04'),
(22,6, 'CAL', '2023/03/05'),
(23,6, 'CL', '2023/03/08'),

(24,7, 'CC', '2023/01/25'),
(25,7, 'CAL', '2023/01/26'),
(26,7, 'CL', '2023/01/30'),

(27,8, 'CC', '2023/01/20'),
(28,8, 'CAL', '2023/01/23'),
(29,8, 'CL', '2023/01/30'),

(30,9, 'VINV', '2023/04/01'),
(31,9, 'CC', '2023/04/02'),
(32,9, 'CAL', '2023/04/03'),
(33,9, 'CL', '2023/04/04'),

(34,10, 'CPAV', '2023/03/15'),
(35,10, 'CC', '2023/03/16'),
(36,10, 'CAL', '2023/03/17'),
(37,10, 'CL', '2023/03/20'),

(38,11, 'CC', '2023/02/12'),
(39,11, 'CAL', '2023/02/13'),
(40,11, 'CL', '2023/02/18'),

(41,12, 'VINV', '2023/04/10'),
(42,12, 'CC', '2023/04/11'),
(43,12, 'CAL', '2023/04/12'),
(44,12, 'CL', '2023/04/13'),

(45,13, 'CC', '2023/03/22'),
(46,13, 'CAL', '2023/03/23'),
(47,13, 'CL', '2023/03/27'),

(48,14, 'CPAV', '2023/01/12'),
(49,14, 'CC', '2023/01/13'),
(50,14, 'CAL', '2023/01/14'),
(51,14, 'CL', '2023/01/17'),

(52,15, 'CC', '2023/02/12'),
(53,15, 'CAL', '2023/02/13'),
(54,15, 'CL', '2023/02/17'),

(55,16, 'CC', '2023/04/14'),
(56,16, 'CAL', '2023/04/15'),
(57,16, 'CL', '2023/04/19'),

(58,17, 'VINV', '2023/01/11'),
(59,17, 'CC', '2023/01/12'),
(60,17, 'CAL', '2023/01/13'),
(61,17, 'CL', '2023/01/14'),

(62,18, 'CC', '2023/02/19'),
(63,18, 'CAL', '2023/02/23'),
(64,18, 'CL', '2023/02/27'),

(65,19, 'CC', '2023/01/01'),
(66,19, 'CAL', '2023/01/02'),
(67,19, 'CL', '2023/01/05'),

(68,20, 'CPAV', '2023/01/04'),
(69,20, 'CC', '2023/01/05'),
(70,20, 'CAL', '2023/01/06'),
(71,20, 'CL', '2023/01/10'),

(72,21, 'CPAV', '2023/02/04'),
(73,21, 'CC', '2023/02/05'),
(74,21, 'CAL', '2023/02/06'),
(75,21, 'CL', '2023/02/10'),

(76,22, 'CC', '2023/01/15'),
(77,22, 'CAL', '2023/01/16'),
(78,22, 'CL', '2023/01/20'),

(79,23, 'CPAV', '2023/01/20'),
(80,23, 'CC', '2023/01/21'),
(81,23, 'CAL', '2023/01/22'),
(82,23, 'CL', '2023/01/29'),

(83,24, 'CC', '2023/02/20'),
(84,24, 'CAL', '2023/02/22'),
(85,24, 'CL', '2023/02/27'),

(86,25, 'VINV', '2023/04/24'),

(87,26, 'CPAV', '2023/04/20'),

(88,27, 'CC', '2023/02/21'),
(89,27, 'CAL', '2023/02/24'),

(90,28, 'CPAV', '2023/04/20'),

(91,29, 'VINV', '2023/04/25');


-- Insertion des données supplémentaires dans la table Produits
INSERT INTO Produits (id,nom, prix, categorie)
VALUES (1,'Gros Merci', 45.00, 'BOUQUET_STANDARD'),
(2,'Lamoureux', 65.00, 'BOUQUET_STANDARD'),
(3,'Lexotique', 40.00, 'BOUQUET_STANDARD'),
(4,'Maman', 80.00, 'BOUQUET_STANDARD'),
(5,'Vive la mariee', 120.00, 'BOUQUET_STANDARD'),
(6,'Gerbera', 5.00, 'FLEUR'),
(7,'Ginger', 4.00, 'FLEUR'),
(8,'Glaïeul', 1.00, 'FLEUR'),
(9,'Marguerite', 2.25, 'FLEUR'),
(10,'Rose rouge', 2.50, 'FLEUR'),
(11,'Vase', 10.00, 'ACCESSOIRE'),
(12,'Ruban', 2.50, 'ACCESSOIRE'),
(13,'Vase en ceramique', 15.50, 'ACCESSOIRE'),
(14,'Pot', 7.95, 'ACCESSOIRE'),
(15,'Arrosoir', 9.00, 'ACCESSOIRE');

-- Insertion des données supplémentaires dans la table Bouquets_Standards
INSERT INTO Bouquets_Standards (id, composition_fleurs,catégorie)
VALUES (1,'Gros Merci','Toute occasion'),
(2,'Lamoureux','St-Valentin'),
(3,'Lexotique','Toute occasion'),
(4,'Maman','Fête des mères'),
(5,'Vive la mariee','Mariage');

-- Insertion des données supplémentaires dans la table Fleurs
INSERT INTO Fleurs (id, disponibilite)
VALUES (6,'annee'),
(7,'annee'),
(8,'mai a novembre'),
(9,'annee'),
(10,'annee');





-- Insertion des données supplémentaires dans la table Inventaire_Magasin
-- Inventaire Magasin 1
INSERT INTO Inventaire_Magasin (id, id_magasin, id_produit, quantite)
VALUES 
(1, 1, 1, 15),
(2, 1, 2, 40),
(3, 1, 3, 23),
(4, 1, 4, 12),
(5, 1, 5, 1),
(6, 1, 6, 100),
(7, 1, 7, 80),
(8, 1, 8, 200),
(9, 1, 9, 150),
(10, 1, 10, 120),
(11, 1, 11, 30),
(12, 1, 12, 100),
(13, 1, 13, 50),
(14, 1, 14, 80),
(15, 1, 15, 70);

-- Inventaire Magasin 2
INSERT INTO Inventaire_Magasin (id, id_magasin, id_produit, quantite)
VALUES 
(16, 2, 1, 15),
(17, 2, 2, 40),
(18, 2, 3, 60),
(19, 2, 4, 30),
(20, 2, 5, 20),
(21, 2, 6, 50),
(22, 2, 7, 30),
(23, 2, 8, 70),
(24, 2, 9, 40),
(25, 2, 10, 90),
(26, 2, 11, 20),
(27, 2, 12, 30),
(28, 2, 13, 60),
(29, 2, 14, 40),
(30, 2, 15, 80);

-- Insertion des données supplémentaires dans la table Commandes_Produits
INSERT INTO Commandes_Produits (id,id_commande, id_produit, quantite)
VALUES (1,1, 3, 4),

(2,2, 6, 7),
(3,2, 9, 3),
(4,2, 14, 2),

(5,3, 3, 3),

(6,4, 7, 6),
(7,4, 11, 1),

(8,5, 5, 2),

(9,6,8,9),
(10,6,9,4),
(11,6,12,3),

(12,7,5,4),

(13,8,8,2),
(14,8,9,3),
(15,8,10,5),
(16,8,15,1),

(17,9,4,3),

(18,10,6,7),
(19,10,7,3),
(20,10,10,2),
(21,10,11,1),

(22,11,8,2),
(23,11,9,3),
(24,11,12,1),

(25,12,1,4),

(26,13,5,2),

(27,14,6,9),
(28,14,10,5),
(29,14,15,2),

(30,15,1,4),

(31,16,9,4),
(32,16,10,6),
(33,16,13,1),
(34,16,14,2),

(35,17,5,1),

(36,18,2,3),

(37,19,5,6),

(38,20,6,2),
(39,20,10,3),
(40,20,11,1),
(41,20,13,1),

(42,21,7,9),
(43,21,8,7),
(44,21,12,3),
(45,21,14,4),

(46,22,1,4),

(47,23,9,7),
(48,23,13,1),
(49,23,15,3),

(50,24,6,4),
(51,24,7,5),
(52,24,11,2),
(53,24,12,1),

(54,25,5,2),

(55,26,9,0),
(56,26,10,0),
(57,26,13,0),
(58,26,14,0),

(59,27,4,2),

(60,28,6,0),
(61,28,11,0),
(62,28,15,0),

(63,29,3,4);
