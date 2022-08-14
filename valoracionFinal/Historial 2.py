h2= (23500, 5960, 2300, 10200, 8900)
print ("Montos de atención en pesos por diferentes servicios/consultas de “Frida”: " + str(h2))
gastosFrida = sum(list(h2))
print ("El monto total gastado a lo largo del tiempo por atención de “Frida” es: " + str(gastosFrida))

def gastosMax ():
    h2 = (23500, 5960, 2300, 10200, 8900)
    mayorCincomil = 0
    for i in h2:
          if i> 5000:
               mayorCincomil += 1
    print ("gastos mayores a $5000: " + str(mayorCincomil))
          
gastosMax()