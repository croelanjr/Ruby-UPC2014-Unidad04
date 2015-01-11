=begin
Una empresa desea una aplicación que permita determinar el 
precio de las joyas que les entregan como garantía de los
préstamos.

Para determinar los costos hay ciertos criterios.
Las joyas, según su calidad están definidas en 2 categorís
numeradas de 1 al 2. 

En el caso de la categoía 1 el monto de garantía que se entrega por la joya se determina por el monto de tasación más el 
20% del precio del oro. En caso la joya está en óptimas condiciones se agregarán 150 soles al monto de préstamo.


Finalmente en el caso de la categoría 2 el monto se determina por el costo de la joya y un 15% por cada mes que la joya 
está como garantía (interés compueto). 

Desarrollar los subprogramas mostrados
=end

def categoria_1(monto, precio_del_oro, condicion_optima)
	monto_total = precio_del_oro * 0.20
	if condicion_optima == true
		return monto + monto_total + 150
	else
		return monto + monto_total
	end
end

def categoria_2(costo, tiempo)
	return (costo * ((1 + 0.15) ** tiempo)).round(2) 
end

#--- zona de test ----

def test_categoria_1
    print validate(252.00, categoria_1(100.00, 10.00, true)) 
    print validate(1020.00, categoria_1(1000.00, 100.00, false)) 
end

def test_categoria_2
    print validate(132.25, categoria_2(100.00, 2))
    print validate(230.00, categoria_2(200.00, 1))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_categoria_1
  test_categoria_2
  puts " "
end
test
