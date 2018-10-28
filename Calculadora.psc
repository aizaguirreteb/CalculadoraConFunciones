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
Funcion resultado<-primerGrado(A,B)
	si A == 0 entonces
		Escribir "No tiene sentido, no hay inc�gnita."
	SiNo
		resultado = -B/A
	FinSi
FinFuncion
Funcion segundoGrado(A,B,C)
	definir sol1,sol2 como real
	Si A == 0 Entonces
		Escribir "Es una ecuaci�n de primer grado" 
		Escribir "El resultado es: " primerGrado(B,C)
	SiNo
		si C == 0 Entonces
			sol1 = 0
			sol2 = -B / A
			Escribir "Las soluciones de la ecuaci�n " A "x^2 + " B "x = 0 son " sol1 " y " sol2
		SiNo
			Si B == 0 Entonces
				si -C/A < 0 Entonces
					Escribir "No tiene soluci�n"
				SiNo
					sol1 = raiz(-C/A)
					sol2 = - raiz(-C/A)
					Escribir "Las soluciones de la ecuaci�n " A "x^2 + " C " = 0 son " sol1 " y " sol2
				FinSi
			SiNo
				si B^2-4*A*C < 0 Entonces
					Escribir "No tiene soluci�n"
				SiNo
					sol1 = (-B + raiz(B^2-4*A*C))/2*A
					sol2 = (-B - raiz(B^2-4*A*C))/2*A
					Escribir "Las soluciones de la ecuaci�n " A "x^2 + " B "x + " C " = 0 son " sol1 " y " sol2
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion
Funcion mostrarMenu 
	Escribir "*******************************"
	Escribir "** Esto es una calculadora:  **"
	Escribir "** Selecciona una opci�n     **"
	Escribir "** 1- Suma                   **"
	Escribir "** 2- Resta                  **"
	Escribir "** 3- Multiplicaci�n         **"
	Escribir "** 4- Divisi�n               **"
	Escribir "** 5- Ecuaci�n 1� Grado      **"
	Escribir "** 6- Ecuaci�n 2� Grado      **"
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
			Escribir "La multiplicaci�n de " A " y " B " es: " multiplicacion(A,B)
		4: 
			Escribir "Introduce el dividendo: "
			Leer A
			Escribir "Introduce el divisor: "
			Leer B
			Escribir "El cociente de " A " y " B " es: " cociente(A,B)
		5:
			Escribir "Introduce el coeficiente A: "
			Leer A
			Escribir "Introduce el coeficiente B: "
			Leer B
			Escribir "La soluci�n de la ecuaci�n de primer grado " A "x + " B " = 0 es x= "  primerGrado(A,B)
		6:
			Escribir "Introduce el coeficiente A: "
			Leer A
			Escribir "Introduce el coeficiente B: "
			Leer B
			Escribir "Introduce el coeficiente C: "
			Leer C
			segundoGrado(A,B,C)
		De Otro Modo:
			Escribir "Opci�n no v�lida"
	Fin Segun
	
FinAlgoritmo
