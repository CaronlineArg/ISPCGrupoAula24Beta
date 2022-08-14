#Datos de identificacion de alumno:
# Enlace a repositorio grupal: https://github.com/CaronlineArg/ISPCGrupoAula24Beta
# Nombre de Rama personal: MedinaCarolinaSBranch
# Nombre de usuario: CarolinaEMedinaArg
# Enlace a mi repositorio: https://github.com/CaronlineArg
# Enlace a branch personal: https://github.com/CaronlineArg/ISPCGrupoAula24Beta/tree/MedinaCarolinaSBranch

#-----ejercicios:
#1. Crear una lista en Python denominada “Dueno” que contenga los siguientes valores: 28957346,  Juan,  Perez, 4789689,  Belgrano 101
#  Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección). Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.

Dueno=[28957346,"Juan","Perez",4789689,"Belgrano 101"]

#2.   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:          23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”
#que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección)

Dueno2=[23546987,"Maria","Perez",4789689,"Pueyrredon  811"]
for i in range(len(Dueno2)):
    if i!= 0 and i!=2:
        print(Dueno2[i])

 # 10. Crear una lista denominada “Clientes” con los nombres de los diferentes  dueños de perros. Juan,  Mario,  Ariel,  Josefina,  Marianella.

Clientes=["Juan","Mario","Ariel","Josefina","Marianella"]

#Ordenarla alfabéticamente y mostrarla por pantalla.

Clientes.sort()
print(Clientes)




#etica y deontologia profesional
#etica: Respuestas de caro para debatir: 
#1 . sì, se ha cometido un delito. 
#2. Se infrigio la Ley 25.326 - Protección de datos personales,
#se hizo exposicion publica de un registro de datos personales sin el consentimiento de los dueños de las mascotas y sin respetar las normas 
#de seguridad correspondientes. 
#3. Se puede reclamar ante los tribunales de primera instancia en lo contencioso administrativo federal y ante 
#la Agencia de Acceso a la Información Pública por haber hecho exposicion de material sensible y personal que podria poner en riesgo mi 
#integridad fisica o psicologica sin mi consentimiento explicito y legal. 
#4. El dueño de la veterinaria por tener que garantizar la 
#integridad y seguridad de los datos de sus clientes y por contratar personal no calificado y, tambien, el programador que es un profesional 
#que deberia contar con el conocimiento sobre las leyes de proteccion de los datos personales y tiene que tener especial cuidado con la 
#seguridad y exposicion de los mismo. Ambos son los responsables de exponer la informacion personal de sus clientes y terceros.