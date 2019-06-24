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

#negatív indexnél hátulról visszafele számozható. pl utolsó elem:
$tomb[-1] 

#van alapértelmezett tömb válozó
@_;

#tomb hossza
$hossz = @tomb;

#!!!! ez viszont az elemeket fogja kiírni, határoló jelek nélkül
print @tomb;

#ez viszont már a tömb hosszát írja ki
print scalar @tomb;

#a tömb utolsó elemének az  indexe
$#tomb 

#1001 elemű tömböt hozz létre
perl -e ' $tomb[0] = 1; $tomb[1000] = 1001; print join(",",@tomb)'


#tömb elem(ek) beszúrása a végére push-al
perl -e '@tomb = (1,2,3,4); push @tomb,5; print join(",",@tomb), "\n"'
perl -e '@tomb = (1,2,3,4); push @tomb,5,6; print join(",",@tomb), "\n"'

#tömb csokolása az elejéről shift-el
perl -e '@tomb = (1,2,3,4); shift @tomb; print join(",",@tomb), "\n"'


#egyébb tömb műveletek még: shift, unshift, pop, push
$ perl -e '@tomb = (1,2,3,4); unshift @tomb,a,0; print join(",",@tomb), "\n"'
a,0,1,2,3,4


#a shift függvény dokumentációját lehet megnézni
perldoc -f shift


#itt étékmásolás történik
$valt = "alma";
@tomb = (1,2,$valt,4);

#a nevek tömb beszúrása a tomb tömb végére
@nevek = ("Béla","Sanyi");
@tomb = (1,2,3)
push @tomb,$nevek[0],$nevek[1]
#de ez is jó
push @tomb,@nevek
#de ez is jó
@tomb = (1,2,3,@nevek)



@szamok = (1,2,3,4);
$elso = $szamok[0];
$masodik = $szamok[1];
$harmadik = $szamok[2];
$negyedik = $szamok[3];
#vagy
($elso,$masodik,$harmadik,$negyedik) = @ tomb
#de így is működik
($elso,$masodik) = @ tomb


#két változó értékének a cseréje
($a,$b) = ($b,$a)

#tömb értékeinek fordított sorrendje
@tomb = (1,2,3,4)
@reverse = reverse @tomb;
print @reverse;
#ha meg akarom változtatni a tömböt is
@tomb = reverse @tomb



#sorbarendezés ASCII tábla szerint
sort @tomb
#pl.:
$ perl -e '@tomb = (1,2,3,4,11); print join(",",sort @tomb), "\n"'
1,11,2,3,4


#sorbarendezés egyedi feltétel szerint
sort {összehasonlítás} @tomb
#két elemet kell összehasonlítani ilyenkor: $a és $b  -t
$ perl -e '@tomb = (1,2,3,4,11); print join(",",sort { $a <=> $b } @tomb), "\n"'
1,2,3,4,11

$ perl -e '@tomb = (1,2,3,4,11); print join(",",sort { $b <=> $a } @tomb), "\n"'
11,4,3,2,1

$a <=> $b
#-1, ha $a kisebb;  0, ha egyenlők;   1, ha $b kisebb


#map függvény a tömb összes elemére érvényesíti a módosítást. $_ az aktuális elemre való hivatkozás
$ perl -e '@tomb = (1,2,3,4,11); map { $_ = $_ +1 } @tomb; print join(",",@tomb), "\n"'
2,3,4,5,12
#!!! map manipulálja az eredeti tömböt, hivatalosan: @tomb =map { $_ = $_ +1 } @tomb;    -nak kellene lennie

#grep -el lehet tömb elemeket kiválogatni megadott feltétel szerint
]$ perl -e '@tomb = (1,2,3,4,11); @tomb = grep {$_ % 2} @tomb;  print join(",",@tomb), "\n"'
1,3,11
$ perl -e '@tomb = (1,2,3,4,11); @tomb = grep {not $_ % 2} @tomb;  print join(",",@tomb), "\n"'
2,4
$ perl -e '@tomb = (1,2,3,4,11); @tomb = grep { ! ($_ % 2) } @tomb;  print join(",",@tomb), "\n"'
2,4


#syntax ellenőrzés futtatás nélkül
$ perl -wc elso.pl
elso.pl syntax OK








