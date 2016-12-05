#CALCULO DE LA MEDIA PARA DATOS NO AGRUPADOS#
y<-scan("D:/D@IR@/ESTADISTICA/PROGRAMAS/datos.txt")	    #Lee los datos#
z<-length(y)	    #Crea una variable n igual a longitud del vector de datos#
SUM=0		    
for (i in 1:z)	    #Crea un contador que inicia en 1 y termina en z, es decir recorre todos los valores del vector de observaciones# 
SUM=SUM+y[i]        #Suma todos los elementos del vector de datos#
SUM                 #Imprime SUM#
media=SUM/z         #MEDIA: Divide SUM entre la longitud del vector de datos#
media              #Imprime la media#
