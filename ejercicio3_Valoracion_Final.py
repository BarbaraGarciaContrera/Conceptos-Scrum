#En la siguiente lista se reemplazo la fecha de Puppy y el DNI del Dueño

perro = [13,"Puppy","12/12/2012","Macho",123]
for i in perro:
    if perro[2]== "12/12/2012":
       perro[2]= "13/12/2012"
    if perro[4]== 123:
       perro[4]= 28957346
print(perro)
