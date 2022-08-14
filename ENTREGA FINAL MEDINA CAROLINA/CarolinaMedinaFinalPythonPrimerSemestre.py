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



