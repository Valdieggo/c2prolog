% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here


/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/

%id de categoria: falta
%categoria( ct, Nma). <- Nc:Nombre Categoria, Nma:NivelMaximo
%categoria(id_categoria,Nombre_categoria,NivelMaximo).
categoria(1,'Bestia',60).
categoria(2,'Monstruo',65).
categoria(3,'Titan',70).
categoria(4,'Wrestlemania_34',75).
categoria(5,'Goliat',75).





%luchadorNombre(Id_luchador,Nm='Nombre').
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
luchadorNombre(13,'Mr.M').
luchadorNombre(14,'Mr.N').
luchadorNombre(15,'Mr.O').
luchadorNombre(16,'Mr.P').
luchadorNombre(17,'Mr.Q').
luchadorNombre(18,'Mr.R').
luchadorNombre(19,'Mr.S').
luchadorNombre(20,'Mr.T').
luchadorNombre(21,'Mr.U').
luchadorNombre(22,'Mr.V').
luchadorNombre(23,'Mr.W').
luchadorNombre(24,'Mr.X').
luchadorNombre(25,'Mr.Y').
luchadorNombre(26,'Mr.Z').
luchadorNombre(27,'Mr.AA').
luchadorNombre(28,'Mr.AB').
luchadorNombre(29,'Mr.AC').
luchadorNombre(30,'Mr.AD').

%luchadorPoder(Id,[Pow,Tgh,Spd,Cha])
% Pow <-Poder
% Tgh <-Resistencia
% Spd <-Velocidad
% Cha <-Carisma

%luchadorPoder(id,[Pow,Tgh,Spd,Cha]).
luchadorPoder(1,[12026,12007,12091,12113]).  
luchadorPoder(2,[12081,12104,11989,12063]).
luchadorPoder(3,[12888,12828,12410,11590]).
luchadorPoder(4,[12183,12121,12245,12214]).
luchadorPoder(5,[12840,12927,12364,12422]).
luchadorPoder(6,[12288,12403,12461,11576]). 
luchadorPoder(7,[12870,13568,12654,12042]).  
luchadorPoder(8,[13504,12624,13733,12383]).
luchadorPoder(9,[12777,12789,13989,12666]).
luchadorPoder(10,[12001,12033,11998,11678]).
luchadorPoder(11,[13034,13940,12239,12897]).
luchadorPoder(12,[13756,13463,13568,14167]).  
luchadorPoder(13,[13027,14008,14090,13112]).
luchadorPoder(14,[12080,12103,11987,12061]).
luchadorPoder(15,[12887,12824,12414,12594]).
luchadorPoder(16,[14185,13123,13247,14216]).
luchadorPoder(17,[15842,14929,13366,12425]).
luchadorPoder(18,[13787,13799,13999,13676]).  
luchadorPoder(19,[12036,12037,12391,12143]).
luchadorPoder(20,[12581,12604,14289,13163]).
luchadorPoder(21,[14688,14628,13416,13696]).
luchadorPoder(22,[14183,15121,15245,14214]).
luchadorPoder(23,[15240,14927,15364,15332]).
luchadorPoder(24,[13331,13904,13959,13463]).  
luchadorPoder(25,[13668,13668,13668,13590]).
luchadorPoder(26,[14183,14121,14245,14214]).
luchadorPoder(27,[15242,14222,15362,14222]).
luchadorPoder(28,[13777,13789,13989,13666]).
luchadorPoder(29,[12026,12007,12091,12113]).
luchadorPoder(30,[12081,12104,11989,12063]).

%__________________________________________________
%Hechos
 
balancePoder(X,Y,Z):-
    			luchadorPoder(X,X2),
    			Pow=X2[0],Tgh=X2[1],Spd=X2[2],Cha=X2[3],
                Ex1=Pow+Tgh,Ex2=Pow+Spd,Ex3=Pow+Cha,
                Ex4=Tgh+Spd,Ex5=Tgh+Cha,Ex6=Spd+Cha,
    			%Falta agregar aqui, factor recursivo.
    			%para el balance de nivel. (desde el base).
    			%-->Falta: Balance de categoria
    			
    
    
    
    
    
    			%Balance Funcion nivel
                Pow=Pow+Pow*0.05*Y,
                Tgh=Tgh+Tgh*0.05*Y,
    			Spd=Spd+Spd*0.05*Y,
    			Cha=Cha+Cha*0.05*Y,
    			Ex1=Ex1+Ex1*0.05*Y,
    			Ex2=Ex2+Ex2*0.05*Y,
    			Ex3=Ex3+Ex3*0.05*Y,
    			Ex4=Ex4+Ex4*0.05*Y,
    			Ex5=Ex5+Ex5*0.05*Y,
    			Ex6=Ex6+Ex6*0.05*Y,
    			ErgoLuchador=[Pow,Tgh,Spd,Cha,Ex1,Ex2,
                               Ex3,Ex4,Ex5,Ex6],
    			
    



    

    


%_______________________________________________
%Reglas

       %id 1-30
        %ct 1-5
        %nl: nivel
%luchadorPoder(id,[Pow,Tgh,Spd,Cha]).
seleccionLuchador(X,Y,Z):-
    luchadorNombre(X,X1), write(X1),nl,
    luchadorPoder(X,X2),nl,
    categoria(Y,Y1,Y2), write(Y1),nl,
    write(Z),nl,
    write(Y2),nl,
    	condicionPoder:-
            Z<=Y2 ->  
            (   
			balancePoder(X,Y,Z),

            )
            ;
    		(   
            	%Z=Y2,   Y2 como nivel maximo
            balancePoder(X,Y,Y2),
    		).
    


%_________________________________________________
%Preguntas--------------------------------------->




