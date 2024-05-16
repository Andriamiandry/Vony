#!/bin/bash

# Définir le chemin vers le répertoire où se trouve votre classe FrontController
DIR="D:\Studie\L2 -------S4--------\Mr Naina\Vony"

# Déplacer dans le répertoire contenant votre classe FrontController
cd "$DIR"

# Compiler le fichier FrontController.java

javac -d . MyController.java
javac -d . FrontController.java

# Créer un fichier JAR en incluant le fichier compilé FrontController.class
jar cf MyController.jar mg
jar cf FrontController.jar mg

# Déplacer le fichier JAR créé dans le répertoire souhaité
mv MyController.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint\lib"
mv FrontController.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint\lib"

sleep 60
