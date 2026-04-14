# oth-aw-abschlussarbeiten

Hier liegen LaTeX Vorlagen für Abschlussarbeitern an der Fakultät EMI der OTH Amberg-Weiden.

Ansprechpartner bei Fragen, Anregungen und Problemen: s.spies@oth-aw.de

Einfach im entsprechenden Ordner "make" eingeben zum Kompilieren.

Abschlussarbeit:
-master.tex
    Hier werden die Dateien für die Kapitel eingebunden und die persönlichen Angaben wie Name, Matrikelnummer etc. gemacht.
    Es ist sinnvoll weitere nötige Usepackages hier einzubinden.
    Falls der name dieser Datei geändert wird muss er auch im Makefile geändert werden.

-kapitel1.tex, kapitel2.tex etc.
    Diese Dateien enthalten den tatsächlichen Inhalt der Abschlussarbeit und können natürlich erweitert und umbenannt werden.
    Sie fangen immer mit: "\chapter" an um ein neues Kapitel zu eröffnen. Weitere Unterteilung ist mit \subsection und \subsubsection möglich.

-formblatt_summary.tex; formblatt_selbststaendigkeitserklaerung
    Diese beiden Dateien erzeugen mit den Angaben aus master.tex die entsprechenden Dokumente und binden sie gleich an der richtigen Stelle der Abschlussarbeit ein
    
Formalia:
Um die Formalia rund um die Abschlussarbeit zu erstellen, müssen in der Datei "variables.tex" die entsprechenden Angaben hinterlegt werden.
In jeder .txt Datei muss außerdem die Fakultät als Klassenvariable angegeben werden.
Um die Dateien dann zu generieren einfach im entsprechenden Ordner "make" ausführen.
    

