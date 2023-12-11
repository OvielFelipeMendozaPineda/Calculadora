Algoritmo Calculadora
	Escribir "Bienvenido a la calculadora."
	Esperar Tecla
	Limpiar Pantalla
	Dimension  MenuOpciones[5]
	MenuOpciones[0] = "1. Sumar"
	MenuOpciones[1] = "2. Restar"
	MenuOpciones[2] = "3. Multiplicar"
	MenuOpciones[3] = "4. Dividir"
	MenuOpciones[4] = "6. Cerrar calculadora"
	Repetir
		Escribir "Seleccione una una operacion."
		para i=0 Hasta 4 Hacer
			Escribir MenuOpciones[i]
		FinPara
		leer opcionUsuario
		Limpiar Pantalla
	Hasta Que opcionUsuario > 0 & opcionUsuario < 6
	Escribir "Cuantos numeros desea operar "
	leer n
	Dimension Operandos[n]
	para i = 0 Hasta n-1 Hacer
		leer OperandoUsuario
		Operandos[i] = OperandoUsuario
	FinPara
	Segun opcionUsuario
		1:
			Escribir Sumatoria(Operandos,n)
		2:
			Escribir Resta(Operandos,n)
		3: 
			Escribir Multi(Operandos,n)
		4: 
			Escribir Division(Operandos,n)
	FinSegun


	
	
FinAlgoritmo



Funcion Resultado <- Sumatoria(Operandos,n)
	para i = 0 Hasta n-1 Hacer
		Resultado = Resultado + Operandos[i]
	FinPara
FinFuncion

Funcion Resultado <- Resta(Operandos,n)
	para i = 1 Hasta n-1 Hacer
		Operandos[0] = Operandos[0] - Operandos[i]
	FinPara
	Escribir Operandos[0]
FinFuncion

Funcion Resultado <- Multi(Operandos,n)
	Resultado = 1
	para i = 0 Hasta n-1 Hacer
		Resultado = Resultado * Operandos[i]
	FinPara
FinFuncion

Funcion Resultado <- Division(Operandos,n)
	para i = 1 Hasta n-1 Hacer
		
		Operandos[0] = Operandos[0] / Operandos[i]
	FinPara
	Escribir Operandos[0]
FinFuncion
	