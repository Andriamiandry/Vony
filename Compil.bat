@echo off
setlocal

:: Définir le chemin vers le répertoire où se trouve votre classe FrontController
set DIR=D:\Studie\L2 -------S4--------\Mr Naina\Vony
set DEPLOY = D:\Studie\L2 -------S4--------\Mr Naina\TestSprint 11\lib

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
jar cf CustomSession.jar mg
jar cf Restapi.jar mg
jar cf VerbAction.jar mg

:: Déplacer les fichiers JAR créés dans le répertoire souhaité
move FrontController.jar "%DEPLOY%"
move AnnotationController.jar "%DEPLOY%"
move AnnotationMethode.jar "%DEPLOY%"
move Mapping.jar "%DEPLOY%"
move ModelView.jar "%DEPLOY%"
move GetAnnotation.jar "%DEPLOY%"
move Param.jar "%DEPLOY%"
move Post.jar "%DEPLOY%"
move RequestBody.jar "%DEPLOY%"
move CustomSession.jar "%DEPLOY%"
move Restapi.jar "%DEPLOY%"
move VerbAction.jar "%DEPLOY%"

:: Attendre 60 secondes


timeout /t 60
