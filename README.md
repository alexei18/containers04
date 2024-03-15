1.  Numele lucrării de laborator:

2.  Scopul lucrarii: Dupa executarea acestei lucrări, studentul va fi capabil să pregătească un container pentru a rula un site web bazat pe Apache HTTP Server + PHP (mod_php) + MariaDB.

3.  Sarcina: Creați un fișier Dockerfile pentru a construi o imagine a containerului care va conține un site web bazat pe Apache HTTP Server + PHP (mod_php) + MariaDB. Baza de date MariaDB trebuie să fie stocată într-un volum montat. Serverul trebuie să fie disponibil pe portul 8000.
    Instalați site-ul WordPress. Verificați funcționarea site-ului.

4.  Pasii urmati:

    - crearea de repositoriu container04
    - clonarea repositoriului
    - crearea sistemului de fisiere
    - crearea fisierului docker si introducerea in el a informatiei necesare
    - construirea imaginii apache2-php-mariadb
    - crearea si pornicontainerului apache2-php-mariadb
    - copierea fisierelor de configurare apache2, php, mariadb in directorul files
    - configurarea fisierelr de configurare pentru apache, maridb si php
    - crearea scriptului de pornire
    - updatarea fisierului dockerfile
    - crearea imaginii, a containerului si rularea acestuia
    - crearea bazei de date si a utilizatorului pentru wordpres
    - crearea fisierului de configurare wordpress
    - configurarea wordpressului
    - reacrearea imaginii, crearea containerului si pornirea acestuia
    - crearea raportului

5.  Concluzii:

Raspunsuri la intrabari:

1.  Ce fișiere de configurare au fost modificate?

    - files/apache2/000-default.conf
    - files/apache2/apache2.conf
    - files/php/php.ini
    - files/mariadb/50-server.cnf

2.  Pentru ce este responsabila instructiunea DirectoryIndex din fisierul de configurare apache2?
    -este responsabilă de stabilirea paginii de index implicită pentru directoarele care nu au specificată o pagină de index în URL-ul solicitat

3.  De ce este necesar fișierul wp-config.php?
    -este esențial pentru instalarea și funcționarea corectă a WordPress. Acesta conține setările de configurare ale instalării WordPress și furnizează informații necesare pentru conectarea la baza de date și alte configurații importante. Iată câteva motive pentru care fișierul wp-config.php este necesar:

    Configurarea bazei de date: wp-config.php conține detalii precum numele bazei de date, utilizatorul și parola pentru conectarea la baza de date MySQL/MariaDB. Aceste informații sunt necesare pentru ca WordPress să poată stoca și accesa datele sale în baza de date.

    Securitate: Fișierul wp-config.php conține chei de autentificare și săruri utilizate pentru criptarea datelor și securizarea sesiunilor. Aceste chei sunt esențiale pentru securizarea site-ului WordPress împotriva atacurilor.

    Setările de mediu: Acest fișier permite specificarea setărilor de mediu, cum ar fi limbajul, fusul orar și alte setări de configurare.

    Definirea prefixului tabelelor: Fișierul wp-config.php permite specificarea unui prefix pentru tabelele bazei de date utilizate de WordPress. Aceasta permite instalarea mai multor instanțe WordPress în aceeași bază de date fără a avea conflicte între tabele.

    Personalizarea opțiunilor avansate: Prin intermediul wp-config.php, puteți activa sau dezactiva opțiuni avansate ale WordPress și plugin-urilor, precum și specificațiile pentru fișierele de salvare, cache-ul și multe altele.

4.  Pentru ce este responsabil parametrul post_max_size din fișierul de configurare php?
    -este responsabil pentru specificarea dimensiunii maxime a datelor care pot fi trimise printr-o cerere POST HTTP către un script PHP.

5.  Specificați, în opinia dvs., care sunt deficiențele imaginii containerului creat?

    Imaginea containerului creată are următoarele deficiențe:

    Nu are un nume semnificativ.
    Nu are o etichetă de versiune.
    Nu are un fișier Dockerfile care să documenteze conținutul și configurația imaginii.
    Nu are un script de pornire care să configureze și să pornească automat serverul Apache și MariaDB.
    Nu are un volum persistent pentru a stoca datele WordPress.
