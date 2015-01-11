=begin
#Los números primos son aquellos que solamente pueden ser divididos entre 1
#y entre sí mismos de forma exacta.
#Se pude elabore un subprograma que defina con "true" o "false" si un número
#es primo y un subprograma que determine la cantidad de números primos 
# que hay desde 1 hasta un número dado. 
# Por ejemplo  si ingreso 6 me deberá dar 4 ya que 1, 2, 3, 5 son primos.
=end
def es_primo?(numero)
	i = 2
	while i < numero do
		if numero % i == 0
			return false
		else
			return true
		end
	i = i + 1
	end
end

def cantidad_primos(numero)
	contador = 0 
	for i in 1..numero
		if numero % i == 0 then
		contador = contador + 1
		end
	i = i + 1
	end
	return contador + 2
end

#--- zona de test ----

def test_es_primo?
    print validate(true, es_primo?(7)) 
    print validate(false, es_primo?(4)) 
end

def test_cantidad_primos
    print validate(4, cantidad_primos(5))
    print validate(5, cantidad_primos(9))
end

def validate (expected, value)
 expected == value ? "." : "F"
end

def test
 
  
  puts "Test de prueba del programa"
  puts "---------------------------"
  test_es_primo?
  test_cantidad_primos
  puts " "
end
test
