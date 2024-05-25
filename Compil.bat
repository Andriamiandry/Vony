@echo off
setlocal

:: Définir le chemin vers le répertoire où se trouve votre classe FrontController
set DIR=D:\Studie\L2 -------S4--------\Mr Naina\Vony

:: Déplacer dans le répertoire contenant votre classe FrontController
cd "%DIR%"

:: Compiler le fichier FrontController.java
javac -d . *.java

:: Créer un fichier JAR en incluant le fichier compilé *.class
jar cf FrontController.jar mg
jar cf AnnotationController.jar mg
jar cf GET.jar mg
jar cf Mapping.jar mg

:: Déplacer les fichiers JAR créés dans le répertoire souhaité
move FrontController.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint\lib"
move AnnotationController.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint\lib"
move GET.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint\lib"
move Mapping.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint\lib"

:: Attendre 60 secondes
timeout /t 60
