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
jar cf AnnotationMethode.jar mg
jar cf Mapping.jar mg
jar cf ModelView.jar mg
jar cf GetAnnotation.jar mg
jar cf Param.jar mg
jar cf Post.jar mg
jar cf RequestBody.jar mg
jar cf MySession.jar mg

:: Déplacer les fichiers JAR créés dans le répertoire souhaité
move FrontController.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move AnnotationController.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move AnnotationMethode.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move Mapping.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move ModelView.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move GetAnnotation.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move Param.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move Post.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move RequestBody.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"
move MySession.jar "D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 08\lib"

:: Attendre 60 secondes
timeout /t 60
