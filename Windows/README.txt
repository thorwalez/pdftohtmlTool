#TNT Form to PDF

Die Applikation stellt eine Weboberfläche bereit mit der ein PDF Dokument ausgefüllt werden kann.
Hierbei handelt es sich um ein eingescanntes Dokument was umgewandelt wurde um es bearbeiten zu können.

**Achtung!!** Beim verändern der Vorlage kann es Abweichungen beim Endergebnis kommen, dann müssen die Positionen
neu Ausgerichtet werden.


####System Voraussetzungen:
- Docker-Engine mit Berechtigung diese nutzen zu können
- Internet Zugang das Layout und Javascript Bibliotheken von Bootstrap online bezogen werden.


#####Einrichten der Applikation:
1) Docker Image Bauen 
````bash
## für Linux
     $: cd Linux
Linux$: bash tntapp.sh build

##für MAC
   $: cd MAC
MAC$: sh tntapp.sh build

#für Windows
       $: cd Windows
Windows$: .\build.bat
````
*Hinweis: Im Windows System kann man sich natürlich auch über den Explorer zum Verzeichnis klicken und mit
        einem doppelklick die Batch Datei ausführen.*

#####Starten der Applikation:
````bash
## für Linux
     $: cd Linux
Linux$: bash tntapp.sh

##für MAC
   $: cd MAC
MAC$: sh tntapp.sh

#für Windows
       $: cd Windows
Windows$: .\start.bat
````

Aufruf der Application im Web-Browser mit: http://localhost

#####Stoppen der Applikation:

````bash
## für Linux
     $: cd Linux
Linux$: bash tntapp.sh stop

##für MAC
   $: cd MAC
MAC$: sh tntapp.sh stop

#für Windows
       $: cd Windows
Windows$: .\stop.bat
````
#####Aktualisieren der Applikation:

````bash
## für Linux
     $: cd Linux
Linux$: bash tntapp.sh update

##für MAC
   $: cd MAC
MAC$: sh tntapp.sh update

#für Windows
       $: cd Windows
Windows$: .\stop.bat
Windows$: .\delete.bat
Windows$: .\build.bat
Windows$: .\start.bat
````

*Hinweis: Bei Linux und MAC befinden sich die erzeugten PDF Dateien in dem Ordner "data" auf dem Medium und Ordner des jeweiligen Betriebssystems.*