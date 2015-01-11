=begin
# Una empresa de finazas para empresas de metales preciosos desea una 
# aplicación que permita determinar el precio de las piezas que les entregan 
# para ser tasadas. 
# Para determinar los montos hay ciertos criterios. Las piezas están 
# definidas en 2 categorías.
# La categoría 1 es de lujo y  el monto  se determina por el monto de 
# tasación más el  20% del precio del oro. En caso la pieza esté en óptimas  
# condiciones se agregarán 150 soles al monto de tasación.
# Finalmente en el caso de la categoría 2 el monto se determina por el 
# costo de la pieza y un 15% por cada mes que la pieza  esté como garantía
# ya que es para procesos industriales. 
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
    print validate(1200.00, categoria_1(1000.00, 1000.00, false)) 
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
