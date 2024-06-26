#!/bin/bash

# Définir le chemin vers le répertoire où se trouve votre classe FrontController
DIR="D:\Studie\L2 -------S4--------\Mr Naina\Vony"

# Déplacer dans le répertoire contenant votre classe FrontController
cd "$DIR"

# Compiler le fichier FrontController.java

javac -d . *.java

# Créer un fichier JAR en incluant le fichier compilé *.class
jar cf FrontController.jar mg
jar cf AnnotationController.jar mg

# Déplacer le fichier JAR créé dans le répertoire souhaité
mv FrontController.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint\lib"
mv AnnotationController.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint\lib"

sleep 60
