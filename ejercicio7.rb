
############################################
############################################
## 7.Ejercicio completo con un hash     ####
############################################
############################################

def new_hash_item(inventario)
	new_item = gets.chomp.split(',').map { |e| e.strip  }
	inventario[new_item[0].to_s] = new_item[1].to_i
	puts inventario
end 

def delete_hash_item(inventario)
	eliminar_item = gets.chomp.to_s
	inventario.delete(eliminar_item)
	puts inventario
	#{:a => 1, :b => 2}.delete!(:a)   #=> {:b => 2}
end

def update_hash_item(inventario)
	update_item = gets.chomp.split(',').map { |e| e.strip  }
	inventario.each {|key, value|
		if key.to_s == update_item[0].to_s
			inventario[key] = update_item[1].to_i
		end
	}
	puts inventario
end

def sum_hash_items(inventario)
inventario.inject(0) {|sum, x| 
	total=sum + x[1]
} #=> 30
end

def item_mayor(inventario)
	puts inventario.values.max
end

def existe_hash_item(inventario)
	update_item = gets.chomp.to_s
	inventario.each {|key, value|
		if key.to_s == update_item.to_s
			puts "SI"
		else
			puts "Valores disponibles: #{key.to_s} \n"
		end
	}
	
end

##################
#### Metodos #####
##################

inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
"Impresoras": 6}

# 1. Crear un menú de 4 opciones, es decir, el usuario puede ingresar 1 2 3 o 4
print "Para manejar el Hash ingrese algunos de los siguientes valores: \n O. Ver Item 1. Ingresar 2.Eliminar 3.Actualizar 4.Total 5. Item Mayor 6. Buscar Item 7. Salir \n"
	#puts input.class
	#strip: Limpieza los espacio en blanco
	while (input = gets.chomp.to_i) != 7
		case input #Ingresa un item
		when 0
			print inventario
		when 1
			puts "Ingrese un nuevo valor para el Hash. Ejemplo: Pendrives, 100"
			new_hash_item(inventario)
			print "Para manejar el Hash ingrese algunos de los siguientes valores: \n 1. Ingresar 2.Eliminar 3.Actualizar 4.Total 5. Item Mayor 6. Buscar Item 7. Salir \n"
		when 2 #Podra Eliminar un item
			puts "Que valor del Hash desea Eliminar"
			delete_hash_item(inventario)
		when 3 #Si el usuario ingresa 3, puede actualizar la información almacenada (item y stock).
			puts "Ingrese un nuevo valor para actualizar el Hash. Ejemplo: Pendrives, 100"
			update_hash_item(inventario)
			print "Para manejar el Hash ingrese algunos de los siguientes valores: \n 1. Ingresar 2.Eliminar 3.Actualizar 4.Total 5. Item Mayor 6. Buscar Item 7. Salir \n"
		when 4 
			puts "El valor total del hash es #{sum_hash_items(inventario)}"
			print "Para manejar el Hash ingrese algunos de los siguientes valores: \n 1. Ingresar 2.Eliminar 3.Actualizar 4.Total 5. Item Mayor 6. Buscar Item 7. Salir \n"
		when 5 # Si el usuario ingresa 5, podrá ver el ítem que tiene la mayor cantidad de stock
			item_mayor(inventario)
			print "Para manejar el Hash ingrese algunos de los siguientes valores: \n 1. Ingresar 2.Eliminar 3.Actualizar 4.Total 5. Item Mayor 6. Buscar Item 7. Salir \n"
		when 6 
			existe_hash_item(inventario)
			print "Para manejar el Hash ingrese algunos de los siguientes valores: \n 1. Ingresar 2.Eliminar 3.Actualizar 4.Total 5. Item Mayor 6. Buscar Item 7. Salir \n"
		when 7
			break
		else
			puts "Ingresaste una opción invalida. Recuerda!!\n 1.Ingresar 2.Eliminar 3.Actualizar 4.Total 5.Item Mayor 6.Buscar Item 7. Salir \n"
      		input = gets.chomp.to_i
		end
	end
puts "Chao, Chao!!"
