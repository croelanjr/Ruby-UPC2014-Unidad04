#encoding: UTF-8
=begin
Determina la cantidad de números primos que hay desde 1 
hasta un número dado. 
Por ejemplo  si ingreso 6 me deberá dar 4 ya que 1, 2, 3, 5 son primos.
=end 

def es_primo?(numero)
    contador = 0
	for i in 1..numero
		if numero % i == 0
			contador = contador + 1
		end
	end
	if contador > 2
		return false
	else
		return true
	end
end

def cantidad_primos(numero)
    contador = 0
	for i in 1..numero
		if es_primo?(i) == true
			contador = contador + 1
		end
	end
	return contador
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
