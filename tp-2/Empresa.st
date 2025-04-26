!classDefinition: #TestEmpresa category: #Empresa!
TestCase subclass: #TestEmpresa
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 18:29:01'!
test001_creacionDeEmpresa

	|empresa|
	empresa := Empresa empresaConNombre: 'Square Enix' yCuit: '52748391211'.
	
	Assert that: empresa nombre isEqualTo: 'Square Enix'.
	Assert that: empresa cuit isEqualTo: '52748391211'.! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 18:53:06'!
test002_empleadoCalculaSuEdad

	|empleado|
	
	empleado := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Tobias' yDireccion: 'Charcas 5536' yEstadoCivil: Soltero new yFechaDeNacimiento: March/21/2005 ySueldoBasico: 450000  yCantidadDeHijos: 2 yAntiguedad: 3.
	
	Assert that: empleado edad isEqualTo: 20! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 11:27:14'!
test003_creacionDeEmpleadoDePlantaPermanente

	|empleado soltero|
	
	soltero := Soltero new.
	
	empleado := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Tobias' yDireccion: 'Charcas 5536' yEstadoCivil: soltero yFechaDeNacimiento: March/21/2005 ySueldoBasico: 500000 yCantidadDeHijos: 3 yAntiguedad: 5.
	
	Assert that: empleado nombre isEqualTo: 'Tobias'.
	Assert that: empleado direccion isEqualTo: 'Charcas 5536'.
	Assert that: empleado estadoCivil isEqualTo: soltero.
	Assert that: empleado fechaDeNacimiento  isEqualTo: March/21/2005.
	Assert that: empleado sueldoBasico isEqualTo: 500000 * peso.
	Assert that: empleado cantidadDeHijos isEqualTo: 3.
	Assert that: empleado antiguedad isEqualTo: 5.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 11:54:50'!
test004_creacionDeEmpleadoDePlantaTemporaria

	|empleado casado|
	
	casado := Casado new.
	
	empleado := EmpleadoPlantaTemporaria newEmpleadoConNombre: 'Alan' yDireccion: 'Gran Canarias 1169' yEstadoCivil: casado yFechaDeNacimiento: June/16/2004 ySueldoBasico: 450000  yCantidadDeHorasExtra: 6 yFechaDeFin: April/25/2027. 
	
	Assert that: empleado nombre isEqualTo: 'Alan'.
	Assert that: empleado direccion isEqualTo: 'Gran Canarias 1169'.
	Assert that: empleado estadoCivil isEqualTo: casado.
	Assert that: empleado fechaDeNacimiento  isEqualTo: June/16/2004.
	Assert that: empleado sueldoBasico isEqualTo: 450000 * peso.
	Assert that: empleado cantidadDeHorasExtras isEqualTo: 6.
	Assert that: empleado fechaDeFin isEqualTo: April/25/2027.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:24:10'!
test005_empleadoDePlantaPermanenteCalculaSueldoBrutoConConyuge

	|empleado casado|
	
	casado := Casado new.
	
	empleado := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Tobias' yDireccion: 'Charcas 5536' yEstadoCivil: casado yFechaDeNacimiento: March/21/2005 ySueldoBasico: 500000 yCantidadDeHijos: 2 yAntiguedad: 3.
	
	Assert that: empleado sueldoBruto isEqualTo: 500550 * peso.! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:24:31'!
test006_empleadoDePlantaPermanenteCalculaSueldoBrutoSinConyuge

	|empleado soltero|
	
	soltero := Soltero new.
	
	empleado := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Tobias' yDireccion: 'Charcas 5536' yEstadoCivil: soltero yFechaDeNacimiento: March/21/2005 ySueldoBasico: 500000 yCantidadDeHijos: 2 yAntiguedad: 3.
	
	Assert that: empleado sueldoBruto isEqualTo: 500450 * peso.! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:31:08'!
test007_empleadoDePlantaPermanenteCalculaRetenciones

	|empleado soltero|
	
	soltero := Soltero new.
	
	empleado := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Tobias' yDireccion: 'Charcas 5536' yEstadoCivil: soltero yFechaDeNacimiento: March/21/2005 ySueldoBasico: 500000 yCantidadDeHijos: 0 yAntiguedad: 0.
	
	Assert that: empleado retenciones isEqualTo: 125000 * peso.! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:39:08'!
test008_empleadoDePlantaPermanenteCalculaSueldoNeto

	|empleado soltero|
	
	soltero := Soltero new.
	
	empleado := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Tobias' yDireccion: 'Charcas 5536' yEstadoCivil: soltero yFechaDeNacimiento: March/21/2005 ySueldoBasico: 500000 yCantidadDeHijos: 0 yAntiguedad: 0.
	
	Assert that: empleado sueldoNeto isEqualTo: 375000 * peso.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:43:46'!
test009_empleadoDePlantaTemporariaCalculaSueldoBruto

	|empleado soltero|
	
	soltero := Soltero new.
	
	empleado := EmpleadoPlantaTemporaria newEmpleadoConNombre: 'Pepe' yDireccion: 'Callao 2098' yEstadoCivil: soltero yFechaDeNacimiento: August/16/2004  ySueldoBasico: 300000 yCantidadDeHorasExtra: 8 yFechaDeFin: June/20/2027.
	
	Assert that: empleado sueldoBruto isEqualTo: 300320 * peso.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 20:07:14'!
test010_empleadoDePlantaTemporariaCalculaRetenciones

	|empleado soltero|
	
	soltero := Soltero new.
	
	empleado := EmpleadoPlantaTemporaria newEmpleadoConNombre: 'Pepe' yDireccion: 'Callao 2098' yEstadoCivil: soltero yFechaDeNacimiento: August/16/2004  ySueldoBasico: 300000 yCantidadDeHorasExtra: 8 yFechaDeFin: June/20/2027.
	
	Assert that: empleado retenciones isEqualTo: 60104 * peso.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 11:18:06'!
test011_empleadoDePlantaTemporariaCalculaSueldoNeto

	|empleado soltero|
	
	soltero := Soltero new.
	
	empleado := EmpleadoPlantaTemporaria newEmpleadoConNombre: 'Pepe' yDireccion: 'Callao 2098' yEstadoCivil: soltero yFechaDeNacimiento: August/16/2004  ySueldoBasico: 300000 yCantidadDeHorasExtra: 8 yFechaDeFin: June/20/2027.
	
	Assert that: empleado sueldoNeto isEqualTo: 240216 * peso
	
! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 11:22:23'!
test012_empresaCalculaMontoTotalDeSueldosNetosDeEmpleados

	|empleadoUno empleadoDos empresa soltero|
	
	empresa := Empresa empresaConNombre: 'Psyonix' yCuit: '11921234185'.
	
	soltero := Soltero new.
	
	empleadoUno := EmpleadoPlantaTemporaria newEmpleadoConNombre: 'Pepe' yDireccion: 'Callao 2098' yEstadoCivil: soltero yFechaDeNacimiento: August/16/2004  ySueldoBasico: 300000 yCantidadDeHorasExtra: 8 yFechaDeFin: June/20/2027.
	
	empleadoDos := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Pepon' yDireccion: 'Belgrano 381' yEstadoCivil: soltero yFechaDeNacimiento: March/19/2000 ySueldoBasico: 400000  yCantidadDeHijos: 0 yAntiguedad: 1.
	
	empresa contratarEmpleado: empleadoUno.
	empresa contratarEmpleado: empleadoDos.
	
	Assert that:  empresa montoTotalSueldosNetos isEqualTo: 540253.5 * peso.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 11:26:51'!
test013_empresaCalculaMontoTotalDeSueldosBrutosDeEmpleados

	|empleadoUno empleadoDos empresa soltero|
	
	empresa := Empresa empresaConNombre: 'Psyonix' yCuit: '11921234185'.
	
	soltero := Soltero new.
	
	empleadoUno := EmpleadoPlantaTemporaria newEmpleadoConNombre: 'Pepe' yDireccion: 'Callao 2098' yEstadoCivil: soltero yFechaDeNacimiento: August/16/2004  ySueldoBasico: 300000 yCantidadDeHorasExtra: 8 yFechaDeFin: June/20/2027.
	
	empleadoDos := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Pepon' yDireccion: 'Belgrano 381' yEstadoCivil: soltero yFechaDeNacimiento: March/19/2000 ySueldoBasico: 400000  yCantidadDeHijos: 0 yAntiguedad: 1.
	
	empresa contratarEmpleado: empleadoUno.
	empresa contratarEmpleado: empleadoDos.
	
	Assert that:  empresa montoTotalSueldosBrutos isEqualTo: 700370 * peso.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 11:33:04'!
test014_empresaCalculaMontoTotalDeRetencionesDeEmpleados

	|empleadoUno empleadoDos empresa soltero|
	
	empresa := Empresa empresaConNombre: 'Psyonix' yCuit: '11921234185'.
	
	soltero := Soltero new.
	
	empleadoUno := EmpleadoPlantaTemporaria newEmpleadoConNombre: 'Pepe' yDireccion: 'Callao 2098' yEstadoCivil: soltero yFechaDeNacimiento: August/16/2004  ySueldoBasico: 300000 yCantidadDeHorasExtra: 8 yFechaDeFin: June/20/2027.
	
	empleadoDos := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Pepon' yDireccion: 'Belgrano 381' yEstadoCivil: soltero yFechaDeNacimiento: March/19/2000 ySueldoBasico: 400000  yCantidadDeHijos: 0 yAntiguedad: 1.
	
	empresa contratarEmpleado: empleadoUno.
	empresa contratarEmpleado: empleadoDos.
	
	Assert that:  empresa montoTotalRetenciones isEqualTo: 160116.5 * peso.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 14:36:09'!
test015_empresaLiquidaSueldos

	|empleadoUno empleadoDos empresa soltero|
	
	empresa := Empresa empresaConNombre: 'Psyonix' yCuit: '11921234185'.
	
	soltero := Soltero new.
	
	empleadoUno := EmpleadoPlantaTemporaria newEmpleadoConNombre: 'Pepe' yDireccion: 'Callao 2098' yEstadoCivil: soltero yFechaDeNacimiento: August/16/2004  ySueldoBasico: 300000 yCantidadDeHorasExtra: 8 yFechaDeFin: June/20/2027.
	
	empleadoDos := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Pepon' yDireccion: 'Belgrano 381' yEstadoCivil: soltero yFechaDeNacimiento: March/19/2000 ySueldoBasico: 400000  yCantidadDeHijos: 0 yAntiguedad: 1.
	
	empresa contratarEmpleado: empleadoUno.
	empresa contratarEmpleado: empleadoDos.
	
	empresa liquidarSueldosEnLaFechaDeEmision: March/30/2025.
	
	Assert that: empresa recibosDeHaberes size isEqualTo: 2.
	Assert that: empleadoUno desglosesDeConcepto size isEqualTo: 1.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 4/2/2025 10:52:36'!
test016_empleadoContratadoCalculaSueldoNeto

	|empleado soltero|
	
	soltero := Soltero new.
	
	empleado := EmpleadoContratado newEmpleadoConNombre: 'Ignacio' yDireccion: 'Belgrano 381' yEstadoCivil: soltero yFechaDeNacimiento: December/25/1990  ySueldoBasico: 600000 yNumeroDeContrato: 1 yMedioDePago: 'Cheque'.
	
	Assert that: empleado sueldoNeto isEqualTo: 599950 * peso.
	! !

!TestEmpresa methodsFor: 'as yet unclassified' stamp: 'TY 4/2/2025 10:53:26'!
test017_empresaLiquidaSueldosConEmpleadoContratado

	|empleadoUno empleadoDos empresa soltero|
	
	empresa := Empresa empresaConNombre: 'Psyonix' yCuit: '11921234185'.
	
	soltero := Soltero new.
	
	empleadoUno := EmpleadoContratado newEmpleadoConNombre: 'Ignacio' yDireccion: 'Belgrano 381' yEstadoCivil: soltero yFechaDeNacimiento: December/25/1990  ySueldoBasico: 600000 yNumeroDeContrato: 1 yMedioDePago: 'Cheque'.
	
	empleadoDos := EmpleadoPlantaPermanente newEmpleadoConNombre: 'Pepon' yDireccion: 'Belgrano 381' yEstadoCivil: soltero yFechaDeNacimiento: March/19/2000 ySueldoBasico: 400000  yCantidadDeHijos: 0 yAntiguedad: 1.
	
	empresa contratarEmpleado: empleadoUno.
	empresa contratarEmpleado: empleadoDos.
	
	empresa liquidarSueldosEnLaFechaDeEmision: March/30/2025.
	
	Assert that: empresa recibosDeHaberes size isEqualTo: 2.
	Assert that: empleadoUno desglosesDeConcepto size isEqualTo: 1.
	! !


!classDefinition: #DesgloseDeConceptos category: #Empresa!
Object subclass: #DesgloseDeConceptos
	instanceVariableNames: 'detalleDeSueldoBruto detalleRetenciones fechaEmision'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!DesgloseDeConceptos methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:08:42'!
detalleDeSueldoBruto
	^detalleDeSueldoBruto ! !

!DesgloseDeConceptos methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:08:56'!
detalleRetenciones
	^detalleRetenciones ! !

!DesgloseDeConceptos methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:09:10'!
fechaDeEmision
	^fechaEmision ! !

!DesgloseDeConceptos methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 13:07:00'!
initializeDesgloseDeConceptosParaElEmpleado: empleado conFechaDeEmision: fechaDeEmision

	fechaEmision := fechaDeEmision.
	detalleDeSueldoBruto := empleado detalleSueldoBruto.
	detalleRetenciones     := empleado detalleRetenciones.
	empleado guardarDesgloseDeConceptos: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DesgloseDeConceptos class' category: #Empresa!
DesgloseDeConceptos class
	instanceVariableNames: ''!

!DesgloseDeConceptos class methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 13:07:48'!
desgloseDeConceptosParaElEmpleado: empleado conFechaDeEmision: fechaDeEmision
	^self new initializeDesgloseDeConceptosParaElEmpleado: empleado conFechaDeEmision: fechaDeEmision.! !


!classDefinition: #Detalle category: #Empresa!
Object subclass: #Detalle
	instanceVariableNames: 'nombreDetalle monto'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!Detalle methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 12:19:02'!
initializeDetalleConNombre: nombreDeDetalle yMonto: montoDeDetalle

	nombreDetalle := nombreDeDetalle.
	monto := montoDeDetalle.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Detalle class' category: #Empresa!
Detalle class
	instanceVariableNames: ''!

!Detalle class methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 12:19:36'!
detalle: nombreDeDetalle conMonto: montoDeDetalle
	^self new initializeDetalleConNombre: nombreDeDetalle yMonto: montoDeDetalle.! !


!classDefinition: #Empleado category: #Empresa!
Object subclass: #Empleado
	instanceVariableNames: 'nombre direccion estadoCivil fechaDeNacimiento sueldoBasico desglosesDeConcepto detalleSueldoBruto detalleRetenciones'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 19:13:49'!
aportesJubilatorios
	^self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 14:35:26'!
desglosesDeConcepto
	^desglosesDeConcepto.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 11:58:17'!
detalleRetenciones
	^self subclassResponsibility.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 11:58:02'!
detalleSueldoBruto
	^self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 17:55:20'!
direccion
	^direccion.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 18:51:31'!
edad
	^(Date today yearNumber) - (self fechaDeNacimiento year number)! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 17:55:29'!
estadoCivil
	^estadoCivil ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 17:55:40'!
fechaDeNacimiento
	^fechaDeNacimiento.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 13:09:55'!
guardarDesgloseDeConceptos: desgloseDeConceptos
	
	desglosesDeConcepto add: desgloseDeConceptos ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 17:55:01'!
nombre
	^nombre ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 19:10:24'!
obraSocial
	^self subclassResponsibility ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 19:10:13'!
retenciones
	^self obraSocial + (self aportesJubilatorios)! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 17:56:06'!
sueldoBasico
	^sueldoBasico ! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:05:50'!
sueldoBruto
	^self subclassResponsibility.! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 11:16:46'!
sueldoNeto
	^self sueldoBruto - (self retenciones).! !


!classDefinition: #EmpleadoContratado category: #Empresa!
Empleado subclass: #EmpleadoContratado
	instanceVariableNames: 'numeroDeContrato medioDePago'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'TY 4/2/2025 10:48:19'!
detalleRetenciones
	
	detalleRetenciones add: (Detalle detalle: 'Gastos Administrativos Contractuales' conMonto: (self retenciones)).

	! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'TY 4/2/2025 10:49:00'!
detalleSueldoBruto
	
	detalleSueldoBruto add: (Detalle detalle: 'Sueldo basico' conMonto: (self sueldoBasico)).

	! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'TY 4/2/2025 10:54:05'!
initializeEmpleadoConNombre: nombreEmpleado yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaNacimiento ySueldoBasico: sueldoBasicoEmpleado yNumeroDeContrato: numeroDeContratoEmpleado yMedioDePago: medioDePagoEmpleado
	
	nombre := nombreEmpleado.
	direccion := direccionEmpleado.
	estadoCivil := estadoCivilEmpleado.
	fechaDeNacimiento := fechaNacimiento.
	sueldoBasico := sueldoBasicoEmpleado * peso.
	numeroDeContrato := numeroDeContratoEmpleado.
	medioDePago := medioDePagoEmpleado.
	detalleSueldoBruto := Bag new. 
	detalleRetenciones := Bag new.
	desglosesDeConcepto := Set new.! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 16:11:31'!
medioDePago
	^medioDePago.! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 16:11:21'!
numeroDeContrato
	^numeroDeContrato.! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 16:13:20'!
retenciones
	^50 * peso   "Gastos administrativos contractuales."! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 16:11:50'!
sueldoBruto
	^sueldoBasico! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmpleadoContratado class' category: #Empresa!
EmpleadoContratado class
	instanceVariableNames: ''!

!EmpleadoContratado class methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 16:08:24'!
newEmpleadoConNombre: nombreEmpleado yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaNacimiento ySueldoBasico: sueldoBasicoEmpleado yNumeroDeContrato: numeroDeContratoEmpleado yMedioDePago: medioDePagoEmpleado
	
	^self new initializeEmpleadoConNombre: nombreEmpleado yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaNacimiento ySueldoBasico: sueldoBasicoEmpleado yNumeroDeContrato: numeroDeContratoEmpleado yMedioDePago: medioDePagoEmpleado.! !


!classDefinition: #EmpleadoPlantaPermanente category: #Empresa!
Empleado subclass: #EmpleadoPlantaPermanente
	instanceVariableNames: 'antiguedad cantidadDeHijos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 10:44:40'!
antiguedad
	^antiguedad! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:28:36'!
aportesJubilatorios 
	^self sueldoBruto * 0.15! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:22:18'!
asignacionPorConyuge
	^estadoCivil asignacionPorConyuge.! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:20:59'!
asignacionPorHijo
	^cantidadDeHijos * 150 * peso! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 10:44:29'!
cantidadDeHijos
	^cantidadDeHijos ! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 12:59:52'!
detalleRetenciones
	
	"Calcula el detalle de las retenciones del empleado"
	
	detalleRetenciones add: (Detalle detalle: 'Aportes jubilatorios' conMonto: (self sueldoBasico)).
	detalleRetenciones add: (Detalle detalle: 'Obra social' conMonto: (self obraSocial)).
	
	
	! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 13:00:31'!
detalleSueldoBruto
	
	"Calcula el detalle del sueldo bruto del empleado"
	
	detalleSueldoBruto add: (Detalle detalle: 'Sueldo basico' conMonto: (self sueldoBasico)).
	detalleSueldoBruto add: (Detalle detalle: 'Salario familiar' conMonto: (self salarioFamiliar)).
	detalleSueldoBruto add: (Detalle detalle: 'Asignacion por hijo' conMonto: (self asignacionPorHijo)).
	detalleSueldoBruto add: (Detalle detalle: 'Asignacion por conyuge' conMonto: (self asignacionPorConyuge)).
	
	! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 12:52:57'!
initializeEmpleadoConNombre: nombreEmpleado yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaDeNacimientoEmpleado ySueldoBasico: sueldoBasicoEmpleado yCantidadDeHijos: cantidadDeHijosEmpleado yAntiguedad: antiguedadEmpleado
.
	
	nombre := nombreEmpleado.
	direccion := direccionEmpleado.
	estadoCivil := estadoCivilEmpleado.
	fechaDeNacimiento := fechaDeNacimientoEmpleado.
	sueldoBasico :=  sueldoBasicoEmpleado * peso.
	cantidadDeHijos := cantidadDeHijosEmpleado.
	antiguedad := antiguedadEmpleado.
	desglosesDeConcepto := Set new.
	detalleSueldoBruto := Bag new.
	detalleRetenciones := Bag new.
! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:22:48'!
montoExtraPorAntiguedad
	^antiguedad * 50 * peso! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:28:11'!
obraSocial
	^(self sueldoBruto * 0.10) + (20 * cantidadDeHijos) ! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:14:58'!
salarioFamiliar
	^self asignacionPorHijo + (self asignacionPorConyuge) + (self montoExtraPorAntiguedad)! !

!EmpleadoPlantaPermanente methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:13:09'!
sueldoBruto
	^self sueldoBasico + (self salarioFamiliar)! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmpleadoPlantaPermanente class' category: #Empresa!
EmpleadoPlantaPermanente class
	instanceVariableNames: ''!

!EmpleadoPlantaPermanente class methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 11:19:51'!
newEmpleadoConNombre: nombre yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaDeNacimientoEmpleado ySueldoBasico: sueldoBasicoEmpleado yCantidadDeHijos: cantidadDeHijosEmpleado yAntiguedad: antiguedadEmpleado

	^self new initializeEmpleadoConNombre: nombre yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaDeNacimientoEmpleado ySueldoBasico: sueldoBasicoEmpleado yCantidadDeHijos: cantidadDeHijosEmpleado yAntiguedad: antiguedadEmpleado.! !


!classDefinition: #EmpleadoPlantaTemporaria category: #Empresa!
Empleado subclass: #EmpleadoPlantaTemporaria
	instanceVariableNames: 'fechaDeFin cantidadDeHorasExtras'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 19:55:14'!
aportesJubilatorios
	^self sueldoBruto * 0.10 + (cantidadDeHorasExtras * 5 * peso)! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 10:45:08'!
cantidadDeHorasExtras
	^cantidadDeHorasExtras ! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 12:59:33'!
detalleRetenciones
	
	detalleRetenciones add: (Detalle detalle: 'Obra Social' conMonto: (self obraSocial)).
	detalleRetenciones add: (Detalle detalle: 'Monto adicional por horas extras' conMonto: (self montoAdicionalPorHorasExtras)).
	detalleRetenciones add: (Detalle detalle: 'Aportes jubilatorios' conMonto: (self aportesJubilatorios)).! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 12:56:40'!
detalleSueldoBruto
	
	detalleSueldoBruto add: (Detalle detalle: 'sueldoBasico' conMonto: (self sueldoBasico)).
	detalleSueldoBruto add: (Detalle detalle: 'montoAdicionalPorHorasExtras' conMonto: (self montoAdicionalPorHorasExtras)).
! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 20:02:04'!
extraPorEdad
	(self edad > 50) ifTrue: [25 * peso].
     ^0 * peso.! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 10:44:56'!
fechaDeFin
	^fechaDeFin ! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 13:12:11'!
initializeEmpleadoConNombre: nombreEmpleado yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaDeNacimientoEmpleado ySueldoBasico: sueldoBasicoEmpleado yCantidadDeHorasExtra: cantidadDeHorasExtraEmpleado yFechaDeFin: fechaFin
	
	nombre := nombreEmpleado.
	direccion := direccionEmpleado.
	estadoCivil := estadoCivilEmpleado.
	fechaDeNacimiento := fechaDeNacimientoEmpleado.
	sueldoBasico := sueldoBasicoEmpleado * peso.
	cantidadDeHorasExtras := cantidadDeHorasExtraEmpleado.
	fechaDeFin := fechaFin.
	desglosesDeConcepto := Set new.
	detalleSueldoBruto := Bag new.
	detalleRetenciones := Bag new.! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:41:30'!
montoAdicionalPorHorasExtras
	^cantidadDeHorasExtras * 40 * peso! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 19:56:13'!
obraSocial
	^(self sueldoBruto * 0.10) + (self extraPorEdad)! !

!EmpleadoPlantaTemporaria methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 17:13:53'!
sueldoBruto
	^self sueldoBasico + (self montoAdicionalPorHorasExtras)! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmpleadoPlantaTemporaria class' category: #Empresa!
EmpleadoPlantaTemporaria class
	instanceVariableNames: ''!

!EmpleadoPlantaTemporaria class methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 11:17:46'!
newEmpleadoConNombre: nombre yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaDeNacimientoEmpleado ySueldoBasico: sueldoBasicoEmpleado yCantidadDeHorasExtra: cantidadDeHorasExtraEmpleado yFechaDeFin: fechaDeFin

	^self new initializeEmpleadoConNombre: nombre yDireccion: direccionEmpleado yEstadoCivil: estadoCivilEmpleado yFechaDeNacimiento: fechaDeNacimientoEmpleado ySueldoBasico: sueldoBasicoEmpleado yCantidadDeHorasExtra: cantidadDeHorasExtraEmpleado yFechaDeFin: fechaDeFin! !


!classDefinition: #Empresa category: #Empresa!
Object subclass: #Empresa
	instanceVariableNames: 'nombre cuit empleados recibosDeHaberes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 11:04:59'!
contratarEmpleado: empleado
	empleados add: empleado
	! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/27/2025 19:48:19'!
cuit
	^cuit! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/27/2025 19:49:32'!
empleados
	^empleados! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 13:11:32'!
generarReciboDeHaberesParaEmpleado: empleado conFechaDeEmision: fechaDeEmision
	
	|reciboDeHaberes|
	
	reciboDeHaberes := ReciboDeHaberes reciboDeHaberesDelEmpleado: empleado conFechaDeEmision: fechaDeEmision.
	self guardarReciboDeHaberes: reciboDeHaberes.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 13:26:10'!
guardarReciboDeHaberes: reciboDeHaberes
	
	recibosDeHaberes add: reciboDeHaberes! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 12:49:55'!
initializeEmpresaConNombre: nombreEmpresa yCuit: cuitEmpresa
	
	nombre := nombreEmpresa.
	cuit := cuitEmpresa.
	empleados := Bag new.
	recibosDeHaberes := Bag new.! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 13:33:47'!
liquidarSueldosEnLaFechaDeEmision: fechaDeEmision
	
	self empleados do: [:empleado | self generarReciboDeHaberesParaEmpleado: empleado conFechaDeEmision: fechaDeEmision].! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 11:26:14'!
montoTotalRetenciones
	^self empleados sum: [:empleado | empleado retenciones]! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 11:24:47'!
montoTotalSueldosBrutos
	^self empleados sum: [:empleado | empleado sueldoBruto]! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/29/2025 20:24:14'!
montoTotalSueldosNetos
	^self empleados sum: [: empleado | empleado sueldoNeto].! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/27/2025 19:48:09'!
nombre
	^nombre! !

!Empresa methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 14:33:53'!
recibosDeHaberes 
	^recibosDeHaberes! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empresa class' category: #Empresa!
Empresa class
	instanceVariableNames: ''!

!Empresa class methodsFor: 'as yet unclassified' stamp: 'TY 3/27/2025 19:45:33'!
empresaConNombre: nombre yCuit: cuit
	
	^self new initializeEmpresaConNombre: nombre yCuit: cuit! !


!classDefinition: #EstadoCivil category: #Empresa!
Object subclass: #EstadoCivil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!EstadoCivil methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 17:52:13'!
asignacionPorConyuge
	^self subclassResponsibility! !


!classDefinition: #Casado category: #Empresa!
EstadoCivil subclass: #Casado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!Casado methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 17:53:48'!
asignacionPorConyuge
	^100 * peso! !


!classDefinition: #Soltero category: #Empresa!
EstadoCivil subclass: #Soltero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!Soltero methodsFor: 'as yet unclassified' stamp: 'TY 3/28/2025 17:54:06'!
asignacionPorConyuge
	^0 * peso.! !


!classDefinition: #ReciboDeHaberes category: #Empresa!
Object subclass: #ReciboDeHaberes
	instanceVariableNames: 'nombreDelEmpleado direccion fechaDeEmision sueldoBruto sueldoNeto desgloseDeConceptos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Empresa'!

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:55:40'!
desgloseDeConceptos
	^desgloseDeConceptos ! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:00:09'!
direccion
	^direccion ! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:00:39'!
fechaDeEmsion
	^fechaDeEmision ! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 13:08:26'!
initializeReciboDeHaberesDelEmpleado: empleado conFechaDeEmision: fechaDeEmisionRecibo
	
	nombreDelEmpleado := empleado nombre.
	direccion := empleado direccion.
	fechaDeEmision := fechaDeEmisionRecibo.
	sueldoBruto := empleado sueldoBruto.
	sueldoNeto := empleado sueldoNeto.
	desgloseDeConceptos := DesgloseDeConceptos desgloseDeConceptosParaElEmpleado: empleado conFechaDeEmision: fechaDeEmisionRecibo.
	
	! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:00:01'!
nombreDelEmpleado
	^nombreDelEmpleado! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:00:49'!
sueldoBruto
	^sueldoBruto ! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'TY 3/31/2025 15:00:56'!
sueldoNeto
	^sueldoNeto! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReciboDeHaberes class' category: #Empresa!
ReciboDeHaberes class
	instanceVariableNames: ''!

!ReciboDeHaberes class methodsFor: 'as yet unclassified' stamp: 'TY 3/30/2025 13:09:10'!
reciboDeHaberesDelEmpleado: empleado conFechaDeEmision: fechaDeEmision
	
	^self new initializeReciboDeHaberesDelEmpleado: empleado conFechaDeEmision: fechaDeEmision.
	! !
