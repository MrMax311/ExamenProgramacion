import 'package:flutter/material.dart';

class ElevatedbuttonEx extends StatefulWidget {
  const ElevatedbuttonEx({super.key});

  @override
  State<ElevatedbuttonEx> createState() => _ElevatedbuttonExState();
}

class _ElevatedbuttonExState extends State<ElevatedbuttonEx> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//Elevated Button
//Un botón elevado es un widget de material en el aleteo que se eleva por defecto.
Cuando presionamos el botón elevado, su elevación aumentará. 
ElevatedButton(
child: Text("Button"),
onPressed:(){
},
),

//ElevatedButton.icon
//El icono y etiqueta se requieren propiedades, lo que significa que
podemos usar ElevatedButton.icon sin proporcionar valores a las propiedades de
iconos y etiquetas.
ElevatedButton.icon(
icon: Icon(Icons.save),
label: Text("Save"),
onPressed:(){
},
),

//onPrimary
//Usaremos el onPrimary (foregroundColor) propiedad para aplicar color al texto e
icono del ElevatedButton.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
),
onPressed:(){

},
),

//Primary
//Usaremos el primary (backgroundColor) propiedad para aplicar el color de fondo
al ElevatedButton.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
),
onPressed:(){

},
),

//onSurface
//Usaremos onSurface (disabledColor) propiedad para definir el color del texto y el
fondo ElevatedButton que queremos mostrar cuando el botón está deshabilitado.
Deshabilitar el botón configurando onPressed en null, para mostrar la salida.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
),
onPressed:null,
),

//overlayColor
//Usar superposiciónColor propiedad para mostrar el color cuando presionamos
(abajo) el ElevatedButton. Comenzará a llenar el botón cuando lo presionemos
(abajo) y desaparece cuando soltamos el botón. Para este propósito IiM
usando BotónEstilo(), como estiloDe() no tiene propiedad overlayColor.
ElevatedButton(
child: Text("Button"),
style: ButtonStyle(
backgroundColor:
MaterialStateProperty.all<Color>(Colors.purple),
foregroundColor:
MaterialStateProperty.all<Color>(Colors.white),
overlayColor:
MaterialStateProperty.all<Color>(Colors.grey),
),
onPressed:() {

},
),

//Side
//Usaremos el lado propiedad si queremos aplicar una frontera al ElevatedButton.
Podemos definir el color de borde, ancho, y estilo.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
side: BorderSide(color:
Colors.black, width: 1),
),
onPressed:(){

},
),

//Elevation
//Usaremos el elevación propiedad para aplicar elevación al ElevatedButton. La
elevación hace que se vea un botón, ya que se levanta hacia arriba desde el
fondo/superficie en el que se coloca el botón.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
side: BorderSide(color:
Colors.black, width: 1),
elevation: 20,
),
onPressed:(){

},
),

//minimumSize
//Usaremos tamaño Mínimo propiedad para definir el tamaño mínimo que queremos
que se muestre el ElevatedButton.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
side: BorderSide(color:
Colors.black, width: 1),
elevation: 20,
minimumSize: Size(150,150),
),
onPressed:(){

},
),

//shadowColor
//Usaremos color de Sombra Propiedad para cambiar el color de la sombra que
aparece cuando se eleva el ElevatedButton.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
side: BorderSide(color:
Colors.black, width: 1),
elevation: 20,
minimumSize: Size(150,150),
shadowColor: Colors.teal,
),
onPressed:(){

},
),

//Shape
//Al usar la forma propiedad podemos aplicar diferentes formas al ElevatedButton.
Podemos aplicar formas como rectangular, rectángulo redondeado, circular, etc.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
side: BorderSide(color:
Colors.black, width: 1),
elevation: 20,
minimumSize: Size(150,150),
shadowColor: Colors.teal,
shape:
RoundedRectangleBorder(borderRadius:
borderRadius.circular(30)),
),
onPressed:(){

},
),

//EdgeInsets.all()
//Acepta un valor que se aplicará a todos los lados.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
side: const BorderSide(color:
Colors.black, width: 1),
elevation: 20,
minimumSize: const Size(150,150),
shadowColor: Colors.teal,
padding: const EdgeInsets.all(30)
),
onPressed:(){

},
),

//EdgeInsets.symmetric()
//Esto acepta valores horizontales y verticales. Puede proporcionar solo horizontal,
solo vertical o ambos.
ElevatedButton(
child: Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
side: const BorderSide(color:
Colors.black, width: 1),
elevation: 20,
minimumSize: const Size(150,150),
shadowColor: Colors.teal,
padding: const EdgeInsets.symmetric(
vertical: 20,
horizontal: 120
)
),
onPressed:(){

},
),

//TextStyle
Usaremos textStyle propiedad para aplicar diferentes estilos
como fontstyle, fontSize etc. al texto ElevatedButton.
ElevatedButton(
child: const Text("Button"),
style: ElevatedButton.styleFrom(
foregroundColor: Colors.white,
backgroundColor: Colors.purple,
disabledBackgroundColor: Colors.grey,
side: const BorderSide(color: Colors.black, width: 1),
elevation: 20,
minimumSize: const Size(150, 150),
shadowColor: Colors.teal,
padding: const EdgeInsets.symmetric(
vertical: 20,
horizontal: 120,
),
textStyle: const TextStyle(
fontSize: 20,
fontStyle: FontStyle.italic,
fontFamily:
"alex",
),
),
onPressed: () {
                      
},
),

        ''',
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
        ),
      ),
    );
  }
}