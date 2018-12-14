"Viernes 16 de noviembre"

"1.- OPERADOR DE ASIGNACIÓN (sIMBOLO:<-)"
X<-2

"2.- OPERADOR DE COMPARACIÓN DE VALORES LOGICOS, se escriben con mayuscula TRUE / FALSE"
"Conjunción (AND) simbologia &&"
TRUE&&TRUE
"Negación (NOT)simbologia !"
!TRUE
"Disyunción (OR) simbologia ||, este es escluyente"
FALSE||FALSE

"3.- OPERADOR DE COMPARACION: este nos entrega operadores logicos"
a<-3
b<-2
c<-7

a < b
a >= b
a > b
a <= b
a == b

"ahora"
a<b 
"ahora negamos esta FALSE"
!(a<b) "ahora quedaria verdadero"

"Para borrar la variable"
rm(a)
rm(b)
rm(c)
rm(x)
rm(X)

"ahora"
a==b 
"FALSE porque a es 3 y b es 2"
a=b 
"ahora le asignamos que a vale 2 igual que b "
a==b  
"TRUE"

"4.- OPERADORES ARITMETICOS"
"aqui tenemos la suma, resta, division, multiplicacion y el resto o mod"
"resto o mod , simbologia %%"
"Ejemplo de mod o resto"
7%%5
20%%2
89%%4
a%%b

"FUNCIONES"
"Lo primero que se debe hacer es la receta de diseño"
"EJEMPLO: Funcion producto"
"Receta de diseño"
#Objetivo: obtener el mod de un producto.
#producto: int int int -> int 
#devuelve la evaluacion a*b mod n
#ejemplo: producto (3,4,7) devuelve 5

Producto<-function(a,b,n){
  (a*b)%%n
}

Producto (3,4,7)


#Tests
  Producto(3,4,7)==5
  
"Sabado 17 noviembre"

a<-3
b<-4
n<-7

"1.-EJEMPLO: mod De Un Producto"
"Receta de diseño"
# modDeUnProducto: int int int -> int
# definicion modDeUnProducto: obtiene el resto de la multiplicacion de dos valores
# Ejemplo: (3,4,7)->5 

ModDeUnProducto<-function(a,b,n){
  return((a*b)%%n)
}

ModDeUnProducto(3,4,7)

#Test
ModDeUnProducto(3,4,7)==5
ModDeUnProducto(3,4,7)==2

"Ahora en vez de poner numeros en la funcion de entrada coloca las 
variables"

ModDeUnProducto<-function(valor1,valor2,divisor){
  return((valor1*valor2)%%divisor)
}

#Test
ModDeUnProducto(3,4,7)==2

"La primera letra de la funcion con MAYUSCULA, y la primera letra de 
la variable: minuscula, porque si se tiene una variable que tiene el 
mismo nombre que la funcion."

modDeUnProducto<-ModDeUnProducto(a,b,n)==2


"2.-EJEMPLO: areaCirculo"
"Receta de diseño"
#areaCirculo: double -> double 
#areaCirculo: calcula el área de un circulo 
#Ejemplo:areaCirculo(7.5)-> 176.7146


AreaCirculo <-function(radio){
  (pi*radio**2)
}

AreaCirculo(7.5)

#Test
AreaCirculo(7.5)==5
AreaCirculo(7.5)==0
AreaCirculo(7.5)==176.7146
"La anterior da FALSE porque es un double, por ende se debe hacer una funcion para 
que de verdadero, pero se puede utilizar un test lo siguiente:"
areaCirculo <- AreaCirculo(7.5)
areaCirculo == 176.7146
as.integer(areaCirculo)
as.integer(areaCirculo)==176


"Viernes 23 de noviembre"

"3.- Tarea: Hacer una funcion que calcule la diferencia de dos areas
(anillos chico y anillo grande), se debe ocupar la funcion del ejercicio anterior"

"Receta de diseño"
#AreaAnillo: double -> double 
#AreaAnillo: calcula el área de un anillo
#Ejemplo:AreaAnillo (5,10)
"Dos soluciones de funciones:"

Anillo <-function(radio1, radio2){
  abs(areaCirculo(radio1)-areaCirculo(radio2))
}

AreaAnillo(5,10)

Anillo2 <-function(radioGrande, radioChico){
  areaCirculo(radioGrande)-areaCirculo(radioChico)
}  
  
AreaAnillo(5,10)

"en este caso se trabaja con valor absoluto (abs) pero en general el orden 
de los factores si altera el producto. En este caso como se trabaja en abs
da lo mismo si coloco el radio grande primero y despues el chico. 
Pero que pasa si en el primer caso se pide un radio y en el segundo
un diametro, se tendra que ingresar si o si en ese orden."

#Test
AreaAnillo(5,10)==7
AreaAnillo(5,10)==8454
AreaAnillo(5,10)==235.6194

radios <- AreaAnillo(5,10)
radios == 235.6194
as.integer(radios)
as.integer(radios)==235

"4.- EJERCICIO: Crear una funcion que calcule el tiempo que se demora en llegar a la casa
de su amigo"

"Receta de Diseño"
"Tempo_Amigo: double double -> double"
"Definicion de la funcion Tiempo_Amigo: utilizando las variables distancia y velocidad obtengo 
tiempo de demora" 
"Ejemplo: Tiempo_Amigo (30, 5.3)-> 5,66"

Tiempo_Amigo <-function(distancia, velocidad){
  distancia/velocidad
}

Tiempo_Amigo(30, 5.3)

#Test
Tiempo_Amigo(30, 5.3)==7
Tiempo_Amigo(30, 5.3)==8454
Tiempo_Amigo(30, 5.3)==5.660377

distancia_velocidad <- Tiempo_Amigo(30, 5.3)
distancia_velocidad== 5.660377
as.integer(distancia_velocidad)
as.integer(distancia_velocidad)==5

"Unidad II: IF y LOOP"

"IF: funciona en base a condiciones y acorde a variables booleanas, es decir 
que conteste TRUE O FALSE"

"Existen tres tipos de IF:"

"1.- CONDICIONAL SIMPLE (IF)
Ejemplo:"

"Receta de diseño"
"Conducta_X: double-> double"
"Def Conducta_X: Dado ciertas condiciones de x, me entrega el doble del valor"
"Ejemplo: Conducta_X(2)->4"

Conducta_X<-function(x){
  if(x>0){
    2*x
  }
}
Conducta_X(2)

"Test"
Conducta_X(6)
Conducta_X(-2)
"cuando se corre con el -2 no pasa nada, porque como no cumple la condicion de que X sea mayor a 0, 
continuara el camino"
"Los condicionales entregan un booleanos, en este caso esta entregando un double, porque agregamos
if dentro de una function, entonces estoy obligandole que entregue un numero"
Conducta_X(-2)==4
Conducta_X(3)==6
Conducta_X(3)==9

"2.- CONDICIONAL DOBLE (if - else )"
"Receta de diseño"
"Conducta2_X: double -> double"
"Def Conducta2_X: Si x es mayor a 0 entregara el doble del valor al cuadrado, otro caso un 1"
"Ejemplo: Conducta2_X(4)-> 32"

Conducta2_X<-function(x){
  if(x<=0){
    1
  }  else {
    2*x^2
  }
}

Conducta2_X(4)

"Test"
Conducta2_X(2)
Conducta2_X(0)
Conducta2_X(1)
Conducta2_X(-2)
Conducta2_X(-10)==1
Conducta2_X(200)==1


"3.- CONDICIONAL MULTIPLE (if - else if - else)"

"estamos constuyendo condiciones sobre condiciones. Se puede repetir cuantas veces
sea necesario"

"Receta de Diseño"
"Determinar_Numero: double-> String"
"Def Determinar_Numero: si el numero es mayor a cero es positivo, si es menor a cero, 
el numero es negativo, si no cumple ninguna de estas condiciones, es otra cosa."
#Ejemplo: Determinar_Numero (5)->"el numero, es positivo" 

Determinar_Numero<-function(x){
  if(x>0){
    "el numero, es positivo"
  }  else if (x<0) {
    "el numero, es negativo"
  }  else          {
   "es otra cosa"
  }
}

Determinar_Numero(5)

"Ahora utilizando el paste: este sirve para pegar elementos.
el pase siempre se debe utilizar para concardenar cosas.
En este caso seria asi:"

Determinar_Numero<-function(x){
  if(x>0){
    paste ("el numero", x, "es positivo")
  }  else if (x<0) {
    paste("el numero", x," es negativo")
  }  else          {
    paste("el numero", x, "es otra cosa")
  }
}

Determinar_Numero(5)

#Test
Determinar_Numero(5)
Determinar_Numero(-2)
Determinar_Numero(0)

"Cuando se le introduce una variable string, lo tira como positivo porque esta transformando
el texto a numero, entonces se debe realizar algo en la funcion para que lo tire como es otra cosa,
lo que se agrega es grepl ..."

Determinar_Numero<-function(x){
  if(grepl("^[A-Za-z]+$",x ,perl= T)||x==0){
    paste("el número",x,"es otra cosa")  
  }else if(x<0) {
    paste("el número",x, "es negativo")
  }else{  
    paste("el número",x,"es positivo")
  }
}

Determinar_Numero("hola")

#Test
Determinar_Numero(10)
Determinar_Numero(-10)
Determinar_Numero("hola")

#Sabado 24 nov 2018

"Lista vacia"
nombreDeLaVariable<-list()

"Lista que ya contiene elemtos"
nombresParaCompletarLaLista <-list("Juan","Pedro","Andrea","Andres","Aymara")

"Otra forma de hacer lista es escribir todos los casos de prueba"
ejemploAnterior<-list("10","-2","hola","0")

"Todo esto puede tener una lista"
estoEsUnaVariable<-list("cabello","cielo",list(21,32,11),"TRUE",2.5)

"Con todo estos elementos, primero se puede mostar"
print(estoEsUnaVariable)
"con esto se muestra todos los elementos que se encuentran
almacenados en la lista"

"Si yo ya tengo una lista y quiero agregarle mas elementos"
#nombre_lista<-c(nombrelista,"elementos que vas agregar")

estoEsUnaVariable<-c(estoEsUnaVariable,"mundo")


"IR A UNA POSICION EN LA LISTA
te devuelve que elemento esta en la posicion solicitada, esta 
debe ser mayor igual a 1. Si la posicion es 0 no entregara
ningun elemento"

estoEsUnaVariable [6]
estoEsUnaVariable [0]
estoEsUnaVariable [1]

"OBTENER TAMAÑO DE LA LISTA"

length(estoEsUnaVariable)


"FOR-LOOP"
"significa automatizar la lista, que se recorra en forma
automatica" "lo hace de manera ordenada y por cada 
elemento"

"Cuando vamos a recorrer del 1 al 100 de manera ordenada,
o vamos a generar elementos de 1 a 100"

for (i in 1: 100) {
  print(estoEsUnaVariable)
  
}

"Como se recorre una lista (lo recorre uno por uno)
muestra todos los elementos que contiene la lista"

for( mundo in estoEsUnaVariable){
  print(estoEsUnaVariable)
}














