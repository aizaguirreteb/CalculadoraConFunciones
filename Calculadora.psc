Funcion  resultado<-suma (A,B)
	resultado = A + B	
FinFuncion
Funcion resultado<-resta(A,B)
	resultado = A-B
FinFuncion
Funcion resultado<-multiplicacion(A,B)
	resultado = A * B
FinFuncion
Funcion resultado<-cociente(A,B)
	Si B==0 entonces
		Escribir "No se puede dividir por cero"
	SiNo
		resultado = A/B
	FinSi
FinFuncion
Funcion mostrarMenu 
	Escribir "*******************************"
	Escribir "** Esto es una calculadora:  **"
	Escribir "** Selecciona una opción     **"
	Escribir "** 1- Suma                   **"
	Escribir "** 2- Resta                  **"
	Escribir "** 3- Multiplicación         **"
	Escribir "** 4- División               **"
	Escribir "*******************************"
FinFuncion



Algoritmo Calculadora
	definir option como entero
	
	mostrarMenu
	
	Leer option
	Segun option Hacer
		1:
			Escribir "Introduce los sumandos: "
			Leer A
			Leer B
			Escribir "La suma de " A " y " B " es: " suma(A,B)
		2:
			Escribir "Introduce los sustraendos: "
			Leer A
			Leer B
			Escribir "La resta de " A " y " B " es: " resta(A,B)
		3:
			Escribir "Introduce los factores: "
			Leer A
			Leer B
			Escribir "La multiplicación de " A " y " B " es: " multiplicacion(A,B)
		4: 
			Escribir "Introduce el dividendo: "
			Leer A
			Escribir "Introduce el divisor: "
			Leer B
			Escribir "El cociente de " A " y " B " es: " cociente(A,B)
		De Otro Modo:
			Escribir "Opción no válida"
	Fin Segun
	
FinAlgoritmo
