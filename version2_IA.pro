:- use_module(library(random)). 
%Agrega la libreria de numeros aleatorios.


%categoria( ct, Nma). <- Nc:Nombre Categoria, Nma:NivelMaximo
categoria('Bestia',60).
categoria('Titan',70).
categoria('Goliat',75).


luchadorCt(1,'Bestia').
luchadorCt(2,'Bestia').
luchadorCt(3,'Bestia').
luchadorCt(4,'Titan').
luchadorCt(5,'Titan').
luchadorCt(6,'Goliat').
luchadorCt(7,'Goliat').
luchadorCt(8,'Goliat').
luchadorCt(9,'Bestia').
luchadorCt(10,'Bestia').
luchadorCt(11,'Titan').
luchadorCt(12,'Titan').


%LuchadorN(Nombre ,Ct=Categoria,Nl=Nivel Acual sin balance).
luchadorN(1,0).
luchadorN(2,0).
luchadorN(3,0).
luchadorN(4,0).
luchadorN(5,0).
luchadorN(6,0).
luchadorN(7,0).
luchadorN(8,0).
luchadorN(9,0).
luchadorN(10,0).
luchadorN(11,0).
luchadorN(12,0).

%luchadorNombre(Id,Nm='Nombre').
luchadorNombre(1,'Mr.A').
luchadorNombre(2,'Mr.B').
luchadorNombre(3,'Mr.C').
luchadorNombre(4,'Mr.D').
luchadorNombre(5,'Mr.E').
luchadorNombre(6,'Mr.F').
luchadorNombre(7,'Mr.G').
luchadorNombre(8,'Mr.H').
luchadorNombre(9,'Mr.I').
luchadorNombre(10,'Mr.J').
luchadorNombre(11,'Mr.K').
luchadorNombre(12,'Mr.L').
%luchadorPoder(Id,[Pow,Tgh,Spd,Cha])
% Pow <-Poder
% Tgh <-Resistencia
% Spd <-Velocidad
% Cha <-Carisma


luchadorPoder(1,[12026,12007,12091,12113]).
luchadorPoder(2,[12081,12104,11989,12063]).
luchadorPoder(3,[11888,11828,11410,11590]).
luchadorPoder(4,[16183,16121,16245,16214]).
luchadorPoder(5,[15840,15927,15364,15422]).
luchadorPoder(6,[24288,24403,24461,24576]).
luchadorPoder(7,[24870,24568,24654,25042]).
luchadorPoder(8,[24504,24624,24733,24383]).
luchadorPoder(9,[11777,11789,11989,11666]).
luchadorPoder(10,[12001,12033,11998,11678]).
luchadorPoder(11,[16034,15940,16239,15897]).
luchadorPoder(12,[15756,15463,15568,16167]).




%como con una Id puedo llamar a las otras Query?



/*_______________________________________________________________
                            Consultas      

random_between(1, 8, R).
    https://www.swi-prolog.org/pldoc/doc_for?object=random_between/3

**/
