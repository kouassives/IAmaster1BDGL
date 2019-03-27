/*

Etudiants:
KOUASSI YVES ANSELME MAGLOIRE
KIMOU N'TAMON PHILIPPE
YAO YVES CHRISTIAN

Master1 BDGL Maths-Infos UFHB 

Reponse

Base de connaissance
*/

personne(1,toto,adresse(1,'rue 1','Yakro','BP1'),30).
personne(2,fatou,adresse(2,'rue 2','Yakro','BP2'),30).
personne(3,froto,adresse(3,'rue 3','Abj','BP3'),22).

voiture(1,'Peugot',505,11,bleue,1).
voiture(2,'Peugot',407,30,rouge,1).
voiture(3,'Renault','TSE',11,blanche,2).

/* 
REGLE DE PRODUCTIONS
*/

listeP:-
personne(X,Y,adresse(_,_,Z,_),T),
write(X),
write(' '),
write(Y),
write(' '),
write(Z),
write(' '),
write(T),nl,fail.

listeV :-
voiture(X,Y,Z,T,U,V),
write(X),
write(' '),
write(Y),
write(' '),
write(Z),
write(' '),
write(T),
write(' '),
write(U),
write(' '),
write(V),nl,fail.


recherchePV :-
personne(X,Y,adresse(_,_,Z,_),T),
voiture(X2,Y2,Z2,T2,U2,V2),
X==V2,
write(X),
write(' '),
write(Y),
write(' '),
write(Z),
write(' '),
write(T),


write('-->'),

write(X2),
write(' '),
write(Y2),
write(' '),
write(Z2),
write(' '),
write(T2),
write(' '),
write(U2),
write(' '),
write(V2),nl,fail.



rechercheP(X) :-
personne(X,Y,adresse(_,_,Z,_),T),
!,
voiture(X2,Y2,Z2,T2,U2,X),

write(X),
write(' '),
write(Y),
write(' '),
write(Z),
write(' '),
write(T),


write('-->'),

write(X2),
write(' '),
write(Y2),
write(' '),
write(Z2),
write(' '),
write(T2),
write(' '),
write(U2),
write(' '),
write(X),nl,fail.


rechercheV(X) :-
voiture(X2,Y2,Z2,T2,U2,X),
!,
personne(X,Y,adresse(_,_,Z,_),T),

write(X),
write(' '),
write(Y),
write(' '),
write(Z),
write(' '),
write(T),


write('-->'),

write(X2),
write(' '),
write(Y2),
write(' '),
write(Z2),
write(' '),
write(T2),
write(' '),
write(U2),
write(' '),
write(X),nl,fail.


