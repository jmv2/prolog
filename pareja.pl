#Hechos

ama(juan,cerveza).
ama(maria,sushi).
ama(juan,sushi).
ama(maria,juan).
ama(juan,maria).

pareja(Persona1,Persona2):- ama(Persona1,Persona2),ama(Persona2,Persona1).
