############################################
##########  1. Sintaxis Básica #############
############################################
edades = { claveuno: 10, clavedos: 20, clavetres: 30 }

############################################
######## 2. Corrección de Errores #########
############################################
 
#### 1 Correccion del Hash
productos = {'bebida' => 850, 'chocolate' => 1200,
'galletas' => 900, 'leche' => 750}

#productos.each { |valor, producto| puts producto }


#### 2 Agregar un nuevo producto al Hash
productos[:cereal] = 2200

#3 Se quiere actualizar el precio de la bebida:

productos[:bebida] = 2000

#4. Convertir el hash en un array y guardarlo en una nueva variable.

#print productos.to_a
#5. Eliminar el producto galletas 

productos.delete(:galletas)

#productos.each { |valor, producto| 
#	puts " El #{valor} vale #{producto}" 
#}

############################################
############################################
########### 3. Operaciones Básicas #########
############################################
############################################

h = {"x": 1, "y":2}
#Agregar el string z con el valor 3.
h["z"]=3
#Cambiar el valor de x por 5.
h[:x]=5
#Eliminar la clave y
h.delete(:y)

#Si el hash tiene una clave llamada z mostrar en pantalla "yeeah"
h.each { |key, value| 
	puts " El #{key} vale #{value}"
	if key=="z"
		puts "yeeah"
	end  
}

#Invertir el diccionario de forma que los valores sean las llaves y las llaves los valores
h.invert
puts h.invert
#Ejemplo:  x = {"a": "hola" } 

############################################
############################################
###########  4.Array y Hashes   ###########
############################################
############################################

#  Se tienen dos arrays uno con el nombre de personas y otro con las edades, se pide
#  generar un hash con el nombre y edad de cada persona (se asume que no existen dos
#  personas con el mismo nombre) #

personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
myhash = {}
personas.each_with_index {|p,e|myhash[p] = edades[e]}
# puts Hash[personas.zip edades]
puts myhash
# 1. Crear un método que reciba el hash y devuelva la edad del hash pasado como
#argumento.


############################################
############################################
###########  5. Array y Hashes   ###########
############################################

meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

# Generar un hash que contenga los meses como llave y las ventas como valor:
# Ej: h = {'Enero': 2000, 'Febrero': 3000 ... }

meses_venta = {}
meses.each_with_index {|m,v|meses_venta[m] = ventas[v]}
puts meses_venta
# 1. Invertir las llaves y los valores del hash.
puts meses_venta.invert
# 2. Obtener el mes mayor cantidad de ventas (a partir del hash invertido.)
puts meses_venta.invert.values.max
############################################
############################################
## 6.Operaciones típicas sobre un hash  ####
############################################
############################################
puts "**************  Ejercicio 6 **********"
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# 1.Obtener el plato mas caro.
puts "El plato mas caro cuesta #{restaurant_menu.values.max} lucas"
# 2. Obtener el plato mas barato.
puts "El plato mas barato cuesta #{restaurant_menu.values.min} lucas"
# 3. Sacar el promedio del valor de los platos.
promedio=0
totalplatos=restaurant_menu.length

restaurant_menu.each { |key, value|
  promedio += value
  puts "El promedio por plato es"
}
promedio_total=promedio/totalplatos
  puts "El promedio total #{promedio_total}"
# 4. Crear un arreglo con solo los nombres de los platos.

nombre_platos = []
restaurant_menu.each {|key,value|
	nombre_platos.push(key)
}
#print "Array con nombre de los platos #{nombre_platos}"
# 5. Crear un arreglo con solo los valores de los platos.
valor_platos = []
restaurant_menu.each {|key,value|
	valor_platos.push(value)
}
#print "Array con valores de los platos #{valor_platos}"
# 6. Modificar el hash y agregar el IVA a los valores de los platos (multiplicar por 1.19).


# 7. Dar descuento del 20% para los platos que tengan un nombre de más 1 una
#palabra
