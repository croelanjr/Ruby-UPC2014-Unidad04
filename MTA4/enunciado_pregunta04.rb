=begin
# Una empresa desea una aplicación que le permita
# predecir sus finanzas respecto a si deben colocar
# el dinero en una cuenta a plazo fijo o invertirla en 
# un negocio. 

# En el caso del plazo fijo este tiene una tasa mensual
# y un plazo determinado en meses. En el caso de la
# inversión esta tiene una cuota de pérdida por inversión inicial
# y un periodo de utilidad con una tasa de crecimiento. 

# Se necesita un programa que permita determinar si es que 
# un monto específico es más conveniente ponerlo en plazo fijo 
# , ponerlo en inversión o en caso sean iguales ponerlo en cualquiera.
# Los valores seran: plazos, invertir, cualquiera 

# Por ejemplo

# Si la empresa tiene 1000 soles y el plazo fijo es de 10% mensual a 10 meses
# mientras que el negocio tiene una cuota de pérdida de 200 soles, con un periodo
# de utilidad de 8 meses a una tasa de crecimiento de 12% 
=end


def plazo_fijo(monto, tasa, tiempo)
	return (monto + ((monto * (tasa / 100.00)) * tiempo))
end

def inversion(monto, cuota, periodo, tasa)
	perdida = monto - cuota
	return (perdida + ((perdida * (tasa / 100.00)) * periodo))
end

def prediccion(monto, tasa_plazo_fijo, tiempo_plazo_fijo, cuota_inversion, periodo_inversion, tasa_inversion)
	if plazo_fijo(monto, tasa_plazo_fijo, tiempo_plazo_fijo) > inversion(monto, cuota_inversion, periodo_inversion, tasa_inversion)
		return "plazos"
	else
		return "invertir"
	end
end

#--- zona de test ----

def test_plazo_fijo
    print validate(10000.00, plazo_fijo(5000, 10, 10)) 
    print validate(7700.00, plazo_fijo(3500, 15, 8)) 
end

def test_inversion
    print validate(10000.00, inversion(5500, 500, 10, 10))
    print validate(15472.05, inversion(9500.00, 123, 5, 13))
end

def test_prediccion
    print validate("plazos", prediccion(8000.00, 15, 6, 1500, 12, 5))
    print validate("invertir", prediccion(16000.00, 10, 6, 300, 19, 5))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_plazo_fijo
  test_inversion
  test_prediccion
  puts " "
end
test