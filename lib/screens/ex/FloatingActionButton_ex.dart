import 'package:flutter/material.dart';

class FloatingactionbuttonEx extends StatefulWidget {
  const FloatingactionbuttonEx({super.key});

  @override
  State<FloatingactionbuttonEx> createState() => _FloatingactionbuttonExState();
}

class _FloatingactionbuttonExState extends State<FloatingactionbuttonEx> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//Floating Action Button
//FloatingActionButton es un widget de Flutter que aparece sobre el contenido de la
pantalla. Generalmente, un botón de acción flotante se ubica en la esquina inferior
derecha de la pantalla por defecto. Representa la acción importante que el usuario
puede realizar en la aplicación. 

floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
backgroundColor: Colors.green,
foreground: Colors.white,
onPressed: (){
setState(() {
});
},
),

//BackgroundColor
//Usaremos la propiedad backgroundColor para aplicar color al fondo del botón.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
backgroundColor: Colors.red,
onPressed: (){

},
),

//ForegroundColor
//La propiedad ForegroundColor se utiliza para aplicar color al elemento secundario
(texto o icono) del botón. Si se utiliza la propiedad color en el widget secundario,
esta sobrescribirá el color de primer plano.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
backgroundColor: Colors.red,
foreground: Colors.blue,
onPressed: (){

},
),

//SplashColor
//La propiedad SplashColor se utiliza para aplicar el color que aparece al pulsar el
botón. Al pulsarlo, el splashColor empieza a llenarlo lentamente. Se desvanece al
soltarlo.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
splashColor: Colors.red,
onPressed: (){

},
),

//Elevation
//La propiedad de elevación se utiliza para definir la cantidad de elevación que
queremos aplicar al FloatingActionButton.
Establezcamos la elevación a 0 y veamos el resultado.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
elevation: 0,
onPressed: (){

},
),

//Ahora establezcamos la elevación a 20 y veamos el resultado.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
elevation: 20,
onPressed: (){

},
),

//DisabledElevation
//La propiedad disabledElevation se usa para aplicar elevación cuando el botón está
deshabilitado. Para mostrar la salida, deshabilito el botón eliminando la propiedad
onPressed . También podemos deshabilitar un botón estableciendo onPressed
como null.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
elevation: 0,
disabledElevation: 20,
),

//HighlightElevation
//Usamos la propiedad highlightElevation para aplicar elevación cuando el botón
está resaltado o presionado.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
elevation: 0,
highlightElevation: 20,
onPressed: (){

},
),

//Mini
//La propiedad mini se usa para mostrar un minibotón en lugar del predeterminado.
Recibe un valor booleano que debemos establecer como verdadero para
mostrarlo.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
mini: true,
onPressed: (){

},
),

//Shape
//Usando la propiedad de forma, podemos aplicar diferentes formas al botón de
acción flotante. Podemos aplicar formas como rectangular, rectangular
redondeada, circular, etc.
floatingActionButton: FloatingActionButton(
child: Icon(Icons.save),
backgroundColor: Colors.white,
foreground: Colors.green,
shape:Border.all(width: 2,color:
Colors.green),
onPressed: (){

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