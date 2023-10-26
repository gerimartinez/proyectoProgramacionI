Algoritmo tpProgramacion	
		
		Definir opcion Como entero
		Definir rutasAereas, datosPasajeros como caracter
		Definir cantidadPasajeros, plazasVendidas Como Entero
		Dimension rutasAereas[4]
		Dimension cantidadPasajeros[4]
		Dimension plazasVendidas[4]
		Dimension datosPasajeros[4][120]//ver como se hace para guardar varios datos//
		
		
		rutasAereas[0] = "1. Buenos Aires - Bariloche"
		rutasAereas[1] = "2. Bueno Aires - Salta"
		rutasAereas[2] = "3. Rosario - Buenos Aires"
		rutasAereas[3] = "4. Mar Del Plata - Mendoza"
		
		cantidadPasajeros[0] = 120
		cantidadPasajeros[1] = 120
		cantidadPasajeros[2] = 80
		cantidadPasajeros[3] = 80
		
		plazasVendidas[0] = 0
		plazasVendidas[1] = 0
		plazasVendidas[2] = 0
		plazasVendidas[3] = 0
		
		//datosPasajeros[rutaSeleccionada - 1][nombreApellido, nroDni, ruta, telefono, numPasajeroFrec, asiento, equipaje, costo]
		
		Repetir 
			Escribir "1. Venta pasaje"
			Escribir "2. Buscar pasaje vendido"
			Escribir "3. Buscar pasaje"
			Escribir "4.Ordenar y mostrar lista pasajeros"
			Escribir "    1. Por numero de asiento Ascendente"
			Escribir "    2. Por numero de asiento Descendente"
			Escribir "5. Listado/s"
			Escribir "    1. Cantidad de pasajes vendido por ruta aerea"
			Escribir "    2. Porcentaje de ventas por ruta aerea"
			Escribir "6. Ingrese salir para salir del programa"
			Leer opcion
			
			//			opcion = convertirAMinusculas(opcion)
			//			Si opcion = "salir" Entonces
			//				Escribir "Finalizando programa. Hasta pronto"
			//			FinSi
			
		Mientras que (opcion < 1) o (opcion > 6)
		
		
		
		Segun opcion 
			Caso  1:
				venta <- ventaPasaje(rutasAereas, plazasVendidas, cantidadPasajeros, datosPasajeros)
				
			Caso 2:
				//busqueda pasajes vendido
			Caso 3: 
				//busqueda pasaje
			Caso 4:
				//ordenar y mostrar lista pasajeros
			Caso 5:
				
		FinSegun
		
FinAlgoritmo

 Funcion venta <- ventaPasaje(rutasAereas, plazasVendidas, cantidadPasajeros, datosPasajeros)

	Definir nombreApellido, nroDni, ruta, telefono, numPasajeroFrec, confirmacionAsiento  Como Caracter
	Definir equipaje Como Logico
	equipaje = falso
	Definir rutaSeleccionada, eleccionEquipaje, asiento Como Entero
	Definir costo Como Real
	
	
	Escribir "Selecciona la ruta aérea disponible que desea tomar:"
	//Repetir 
		
		Para i <- 0 Hasta 3 Con Paso 1 Hacer
			Escribir rutasAereas[i]
			
		FinPara
		Leer rutaSeleccionada 
		ruta = rutasAereas[rutaSeleccionada - 1] //
		Escribir "Ha elegido: ", ruta
		
	//Mientras Que (rutaSeleccionada < 1) o (rutaSeleccionada > 5)
		
		Para  i = 0 Hasta n-1 Con Paso 1 Hacer
			Para j = 0 Hasta n-1 con paso 1 Hacer
				
			FinPara
		FinPara
//	Si cantidadPasajeros[rutaSeleccionada - 1] > plazasVendidas[rutaSeleccionada - 1] Entonces
//		Escribir "Hay asientos disponibles"
//		
//		Escribir "Desea reservar un asiento para esta ruta?"
//		Leer confirmacionAsiento
//		
//		Si confirmacionAsiento == "si" o confirmacionAsiento == "Si" o confirmacionAsiento == "SI" Entonces
//			plazasVendidas[rutaSeleccionada - 1] = plazasVendidas[rutaSeleccionada - 1] + 1 // asiento vendido
//			asiento = plazasVendidas[rutaSeleccionada - 1] // asigno asiento
//			Escribir " asjfhdg ", plazasVendidas[]
//		FinSi
//		
//		Escribir "Ingrese su nombre y apellido"
//		Leer nombreApellido
//		
//		Escribir "Ingrese su dni"
//		Leer nroDni
//		
//		Escribir "Ingrese su numero de telefono"
//		Leer telefono
//		
//		Escribir "Si desea llevar equipaje en bodega ingrese 1 de lo contrario ingrese 0"
//		Leer eleccionEquipaje
//		Si eleccionEquipaje = 1 Entonces
//			equipaje = Verdadero
//		FinSi
//		
//		Escribir "Ingrese su numero de pasajero frecuente"
//		Leer numPasajeroFrec
//		
//		
//		//Resumen del vuelo
//		Escribir "Ruta: ", ruta
//		Escribir "Nombre y Apellido: ", nombreApellido
//		Escribir "Dni: ", nroDni
//		Escribir "Telefono: ", telefono
//		Escribir "Equipaje en bodega: ", equipaje // SI TIENE EQUIPAJE HAY RECARGO DEL 5%
//		Escribir "Número pasajero frecuente: ", numPasajeroFrec
//		Escribir "Asiento: ", asiento
//		
//		costo = costoPasaje(rutaSeleccionada, plazasVendidas, equipaje)
//		
//	Sino 
//		Escribir "No hay asientos disponibles en esta ruta"
//	FinSi
	
FinFuncion

Funcion  costo <- costoPasaje(rutaSeleccionada, plazasVendidas, equipaje)
	
	Definir costo Como Real
    costo = 0
	
	Segun rutaSeleccionada Hacer
		Caso 1:
			Si plazasVendidas[0] <= 20 Entonces
				costo = 150000
				Si equipaje == Verdadero Entonces
					costo = costo * 0.05 + costo
				FinSi
				Escribir "El costo del pasaje es: $", costo
			Sino 
				Si plazasVendidas[0] > 20 y plazasVendidas[0] <= 60 Entonces
					costo = 150000 * 0.10 + 150000
					Si equipaje == Verdadero Entonces
						costo = costo * 0.05 + costo
					FinSi
					Escribir "El costo del pasaje es: $", costo
				SiNo
					costo = 180000
					Si equipaje == Verdadero Entonces
						costo = costo * 0.05 + costo
					FinSi
					Escribir "El costo del pasaje es: $", costo
				FinSi
			FinSi
			
		Caso 2:
			Si plazasVendidas[1] <= 20 Entonces
                costo = 120000
				Si equipaje == Verdadero Entonces
					costo = costo * 0.05 + costo
				FinSi
				Escribir "El costo del pasaje es: $", costo
			SiNo
				Si plazasVendidas[1] > 20 y plazasVendidas[1] <= 60 Entonces
					costo = 120000 * 0.10 + 120000
					Si equipaje == Verdadero Entonces
						costo = costo * 0.05 + costo
					FinSi
					Escribir "El costo del pasaje es: $", costo
				Sino
					costo = 150000
					Si equipaje == Verdadero Entonces
						costo = costo * 0.05 + costo
					FinSi
					Escribir "El costo del pasaje es: $", costo
				FinSi
			FinSi
			
		Caso 3:
			Si plazasVendidas[2] <= 10 Entonces
				costo = 7000
				Si equipaje == Verdadero Entonces
					costo = costo * 0.05 + costo
				FinSi
				Escribir "El costo del pasaje es: $", costo
			Sino 
				Si plazasVendidas[2] > 10 y plazasVendidas[2] <= 40 Entonces
					costo = 70000 * 0.15 + 70000
					Si equipaje == Verdadero Entonces
						costo = costo * 0.05 + costo
					FinSi
					Escribir "El costo del pasaje es: $", costo
				Sino
					costo = 95000
					Si equipaje == Verdadero Entonces
						costo = costo * 0.05 + costo
					FinSi
					Escribir "El costo del pasaje es: $", costo
				FinSi
			FinSi
		Caso 4:
			Si plazasVendidas[3] <= 10 Entonces
                costo = 95000
				Si equipaje == Verdadero Entonces
					costo = costo * 0.05 + costo
				FinSi
				Escribir "El costo del pasaje es: $", costo
			Sino
				Si plazasVendidas[3] > 10 y plazasVendidas[3] <= 40 Entonces
					costo = 95000 * 0.15 + 95000
					Si equipaje == Verdadero Entonces
						costo = costo * 0.05 + costo
					FinSi
					Escribir "El costo del pasaje es: $", costo
				Sino
					costo = 125000
					Si equipaje == Verdadero Entonces
						costo = costo * 0.05 + costo
					FinSi
					Escribir "El costo del pasaje es: $", costo
				FinSi
			FinSi
	FinSegun
	
FinFuncion

Subproceso busqueda(plazasVendidas, n, asiento)
	Definir i Como Entero
	i = 0
	
	Definir asientoEncontrado como logico
	asientoEncontrado = Falso
	
	Mientras i <= n-1 y no asientoEncontrado Hacer
		Si plazasVendidas[i] == asiento Entonces
			asientoEncontrado = Verdadero
		SiNo
			i = i+1
		FinSi
	FinMientras
	
	Si asientoEncontrado Entonces
		Mostrar asiento[plazasVendidas - 1]
	FinSi
FinSubProceso

//SubProceso ordenarPasajeros(rutaSeleccionada, plazasVendidas, 


