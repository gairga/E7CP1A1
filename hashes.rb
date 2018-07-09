### Sintaxis Basica ####
edades = { claveuno: 10, clavedos: 20, clavetres: 30 }


### Correccion de Errores #### 
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


##### Operaciones Basicas #####


h = {"x": 1, "y":2}
#Agregar el string z con el valor 3.
h["z"]=3
#Cambiar el valor de x por 5.
h.each { |key, value| 
	puts " El #{key} vale #{value}" 
}


