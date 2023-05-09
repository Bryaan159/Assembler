# Assembler
## Descripción
Consiste en un conjunto de mnemónicos que representan instrucciones básicas para las computadoras, microprocesadores, microcontroladores 
y otros circuitos integrados programables.

### *Aclaraciones*
Importancia del lenguaje de ensamblador
* Radica principalmente que se trabaja directamente con el microprocesador; por lo cual se debe de conocer el funcionamiento interno en ese; tiene la ventaja de qué el se puede realizar cualquier tipo de programas de alto nivel no lo podria realizar.
        Ventajas
     * Como trabaja directamente con el microprocesador al ejecutar un programa, pues como este lenguaje es el más cercano a la máquina la computadora.
     * Efiencia en tamaño: un programa en ensamblador no ocupa mucho espacio porque no tiene que cargar librerias y demás como son los lenguajes de alto nivel.


**Partes lógicas**
* Unidad de Control: unidad encargada de activar o desactivar los diferentes componentes del procesador, igualmente se encarga de interpretar y ejecutar las diferentes instrucciones almacenadas en la memoria principal.
* Unidad Aritmética y Lógica: se encarga de realizar las operaciones de transformación de datos, especialmente las operaciones aritméticas llamada **FPU**

*Registros:*
**una memoria de alta velocidad y poca capacidad integrada en el microprocesador, que permite guardar transitoriamente y acceder a valores muy usados. Su función es la de almacenar datos, siendo la manera más rapida de hacerlo por el sistema**
* Registro Acumulador.
* Registro Temporal.
* Registro Estado.
* Registro Instruccion.

- - -
#### Registros de proposito general
* Registros AX(Acumulador)
* Registros BX(Base)
* Registros CX(Contador)
* Registros DX(Datos)
#### Registros de segmento
* Segmento Extra(ES)
* Segmento Codigo(CS)
* Segmento Pila(SS)
* Segmento Datos(DS)
- - -
### Modos de direccionamiento
Los modos de direccionamiento asigna memoria RAM en porciones que puede ser referenciadas individualmente para que CPU pueda determinar que ubicación de memoria se va a utilizar para cada instrucción. 


### **Registros para trabajar**

| AX | BX | CX | DX |
| :------: | :------: | :------: | :------: |
| Acumulador| Base| Counter | Datos |
| x | Segmento de datos | x | x |

-------
### Direccionamiento implicito
* Por lo general son instrucciones que no se accesan memoria, o bien que tiene la forma especifica a accesarla. Ejemplos: POPF, NOP
### Modo de registro
* Una solamente registros como operandos. Es el más rápido, pues minimiza los recursos necesarios(toda la información fluye dentro del EU del CPU) Ejemplos: MOV AX, BX
### Modo inmediato
* Tiene dos operandos: un registro y una constante que se usa por su valor. El valor constante no se tiene que buscar en memoria Ejemplo: MOV AH, 9
### Modo directo
* Uno de los operadores involucra una localidad especifica de memoria. El valor constante se tiene que buscar en memoria en la localidad especificada.
------
Ejemplo de direccionamiento directo
```asm
Ejemplos 
MOV AX,[BX]
MOV DX,[BX+2]
MOV CX,[BX+DI]
MOV DL,[BX+SI+3]
```

# Interrupciones
Es una situación especial que suspende la ejecución de un programa de modo que el sistema pueda realizar una acción para tratarla.
Tal situación se da, por ejemplo cuando un periferico requiere la atención de un programa.

**Link**: http://arantxa.ii.uam.es/~gdrivera/labetcii/int_dos.htm
