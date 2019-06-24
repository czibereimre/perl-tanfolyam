# perl-tanfolyam
Perl tanfolyam 2019.06.24-28


Ctrl+d kódfuttatás


#execute
perl -e 'print "hello";' 


#stdin-ről jövő adatok feldolgozása. kell a print hgoy ki is írja
cat /etc/passwd | perl -n -e 's/a/e/g;print;'
#print nélkül is megjelenik
cat /etc/passwd | perl -p -e 's/a/e/g;'
#fájban történő változás esetén -i kell, ha egyből utána írunk valamit akkor azzal a kiterjesztéssel csinál egy backupot
perl -p -i.orig -e 's/a/e/g' ./passwd

#!/bin/perl

ez a környezeti változóból olvassa ki a perl elérési útját
#!/usr/bin/env perl  



#skalár változó érték megadása, lehet benne [a..b, A..B, 0..9, '_'], számmal nem kezdődhet
$valtozo = érték

$szting = "alma";
$szting="alma";
$szting             =                "alma";

$egesz = 2;
$tort = 3.14;
$szam = b0101;   #binaris
$szam = xFF;     #hexa
$okt = 0644;     #oktális

#üres, definiálatlan változó. undef érté van
$valt;
$valt = undef;


#az undef matematikai környezetben nulla, szöveges környezetben üres szting lesz

#alapértelmezett skalár változó. nem kell definiálni, mindig van.
$_;

#a print függvény ha nem adunk meg neki paramétert akkor kiírja az alapértelmezett skalár változót


#@tomb = lista
@tomb = ();

@szamok = (1,2,3,4);
@betuk = ("a","b","c","d");
@vegyes = ("a",2,3,"d",4);
@vegyes = ("a",2,3,"d",4,undef,6);


#tomb elemire hivatkozá 0-ás index-el kezdődik. a tömb neve elé $ jel kell mert egy elem egy skalár lesz
$tomb[0]
$szamok[2]


