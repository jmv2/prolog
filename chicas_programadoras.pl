
usa(valentina, ide, windows).
usa(valentina, ide, mac).
usa(valentina, ide, linux).
usa(valentina, procesador_texto, windows).
usa(valentina, procesador_texto, mac).
usa(valentina, planilla, mac).
usa(valentina, procesador_texto, mac).

usa(antonia, ide, mac).
usa(antonia, planilla, mac).
usa(antonia, ide, mac).

usa(nicole, ide, linux).
usa(nicole, procesador_texto, windows).
usa(nicole, planilla, windows).

necesita(procesador_texto, 64).
necesita(planilla,	128).

necesita_128(Programa):-
	necesita(Programa, Memoria), Memoria=128.


requerimientos(Programa, Cantidad) :-
	necesita(Programa, Memoria), Memoria>=Cantidad.



programa_que_usa(Nombre, Programa):-
	usa(Nombre,Programa, _).


sistema_operativo_usan(Nombre, SO):-
	usa(Nombre, _ , SO).


windows_mac(Persona):-
	usa(Persona, _ , windows);
	usa(Persona, _ , mac).



solo_mac(Persona):- 
	usa(Persona, _ , mac),
	not(usa(Persona, _ , linux)),
	not(usa(Persona, _ , windows)).


%Listas

contiene([Head|Tail], Head).
contiene([Head|Tail], Y):- 
	contiene(Head, Y).
