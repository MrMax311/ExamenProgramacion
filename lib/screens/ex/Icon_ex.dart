import 'package:flutter/material.dart';

class IconEx extends StatefulWidget {
  const IconEx({super.key});

  @override
  State<IconEx> createState() => _IconExState();
}

class _IconExState extends State<IconEx> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//Icon
//es un icono que actúa como un botón y reacciona al tacto
del usuario. 
IconButton(
icon: Icon(Icons.play_arrow),
onPressed: (){

},
),

//IconSize
//Usaremos la propiedad iconSize para definir el tamaño del ícono dentro del botón.
Container(
padding: EdgeInsets.all(20),
alignment: Alignment.center,
height: 50,
child: IconButton(
icon: Icon(Icons.play_arrow),
iconSize: 50,
onPressed:() {

},
),
),

//Color
//Usaremos esta propiedad para cambiar el color del IconButton.
Container(
padding: EdgeInsets.all(20),
alignment: Alignment.center,
height: 50,
child: IconButton(
icon: Icon(Icons.play_arrow),
color: Colors.green,
iconSize: 50,
onPressed:() {

},
),
),

//SplashColor
//Usaremos la propiedad splashColor para aplicar el color que aparece al pulsar el
IconButton. Cuando el usuario pulsa el IconButton, el splashColor empieza a llenar
el botón lentamente. Se desvanece al soltarlo.
//SplashRadius
//Usaremos la propiedad splashRadius para definir hasta qué punto debe llenarse
splashColor.
Container(
padding: EdgeInsets.all(20),
alignment: Alignment.center,
height: 50,
child: IconButton(
icon: Icon(Icons.play_arrow),
color: Colors.green,
iconSize: 50,
splashRadius: 40,
splashColor: Colors.red,
onPressed:() {

},
),
),

//HighlightColor
//El color de resaltado es el color secundario del botón cuando está pulsado. El
color de resaltado se representa como un color sólido que se superpone al color
del botón (si lo hay). Si el color de resaltado es transparente, el color del botón se
verá a través de él.
Container(
padding: EdgeInsets.all(20),
alignment: Alignment.center,
height: 50,
child: IconButton(
icon: Icon(Icons.play_arrow),
color: Colors.green,
iconSize: 50,
splashRadius: 40,
splashColor: Colors.red,
highlightColor:
Colors.red,
onPressed:() {

},
),
),

//DisabledColor
//Usaremos la propiedad disabledColor para definir el color que se mostrará cuando
el botón esté deshabilitado.
Container(
height: 50,
),
IconButton(
icon: Icon(Icons.play_arrow),
color: Colors.green,
iconSize: 50,
splashRadius: 40,
disabledColor: Colors.grey,
onPressed:null,
),
),

//Tooltip
//Utilizaremos esta propiedad para mostrar un texto que describe la acción que
ocurrirá cuando se presione el botón.
Container(
height: 50,
),
IconButton(
icon: Icon(Icons.play_arrow),
color: Colors.green,
iconSize: 50,
splashRadius: 40,
disabledColor: Colors.grey,
onPressed:() {},
tooltip: "Play",
),
),

//BackgroundColor
//No existe ninguna propiedad para aplicar color de fondo a IconButton. Podemos
hacerlo envolviendo IconButton dentro del widget Ink y aplicando una decoración a
este.
Container(
height: 50,
),
Ink(
child:IconButton(
icon: Icon(Icons.play_arrow),
color: Colors.green,
iconSize: 50,
splashRadius: 40,
disabledColor: Colors.grey,
onPressed:() {},
tooltip: "Play",
),
decoration: ShapeDecoration(
color: Colors.grey,
shape: CircleBorder()
),
)
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