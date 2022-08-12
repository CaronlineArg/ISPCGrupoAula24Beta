Historial2 = (23500, 5960, 2300, 10200, 8900)


def monto_total(Historial2):
    suma = 0
    for monto in Historial2:
        suma += monto
    print("El monto total por atención de Frida es" , suma)

def superior(Historial2):
    contador = 0
    for monto in Historial2:
        if monto > 5000:
            contador += 1
    print("Los gastos que fueron supeiores a 5000 fueron " , contador)


monto_total(Historial2)
superior(Historial2)
            
    
        
    
