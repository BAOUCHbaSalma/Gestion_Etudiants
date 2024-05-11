# Gestion_Etudiants
Système de Gestion des Étudiants avec Spring
Ce projet est un système de gestion des étudiants développé avec le framework Spring. Il permet aux administrateurs de gérer efficacement les dossiers des étudiants en incluant des fonctionnalités telles que l'ajout, la visualisation, la mise à jour et la suppression des étudiants.

Technologies utilisées
Java 8
Spring Framework (Spring Core, Spring MVC)
Maven
Fonctionnalités
Visualiser les Étudiants
Affichage d'une liste de tous les étudiants dans le système en utilisant une page JSP.
Chaque entrée d'étudiant affiche des informations de base telles que le nom, le numéro de matricule et l'e-mail.
Ajouter un Nouvel Étudiant
Formulaire permettant aux administrateurs d'ajouter un nouvel étudiant au système.
Validation des données pour garantir que les champs obligatoires sont remplis et que les formats de données appropriés sont utilisés.
Mettre à Jour les Détails de l'Étudiant
Possibilité de modifier les détails d'un étudiant existant, y compris le nom, le numéro de matricule, l'e-mail, le numéro de téléphone et l'adresse.
Supprimer un Étudiant
Option pour supprimer un étudiant du système.
Configuration
Assurez-vous d'avoir Java 8 et Maven installés sur votre système.
Clonez ce dépôt : git clone https://github.com/BAOUCHbaSalma/Gestion_Etudiants.git
Importez le projet dans votre IDE préféré en tant que projet Maven.
Configurez votre base de données dans src/main/resources/application.properties.
Exécutez l'application en utilisant votre IDE ou en exécutant mvn spring-boot:run dans le répertoire du projet.
Structure du Projet
src/main/java: Contient le code source Java.
com.enaa.gestionetudiants: Package principal contenant les classes du projet.
controller: Contrôleurs Spring pour gérer les requêtes HTTP.
model: Classes de modèle pour représenter les entités du système.
repository: Interfaces de repository pour interagir avec la base de données.
service: Classes de service pour la logique métier.
src/main/resources: Contient les fichiers de configuration et les ressources statiques.
application.properties: Fichier de configuration Spring Boot.
templates: Fichiers de vues JSP pour l'interface utilisateur.
src/test/java: Contient les tests unitaires et d'intégration.
Contributions
Les contributions sous forme de pull requests sont les bienvenues. Assurez-vous de respecter les bonnes pratiques de codage et de tester vos modifications avant de soumettre une pull request.

Auteur
Ce projet a été développé par BAOUCH SALMA.
