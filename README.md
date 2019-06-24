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
