import 'package:flutter/material.dart';

class TextEx extends StatefulWidget {
  const TextEx({super.key});

  @override
  State<TextEx> createState() => _TextExState();
}

class _TextExState extends State<TextEx> {
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//Text
//Para mostrar texto en
aplicaciones de Flutter, necesitamos un widget de texto. Es imposible imaginar una
aplicación sin texto. Con este widget, podemos mostrar el texto en una o varias
líneas.

//style
//La propiedad de estilo de texto del widget Texto se utiliza para aplicar diferentes
estilos al texto.
//Color
//Al definir texto, este se mostrará en negro por defecto. En algunos casos,
queremos cambiar el color para optimizar la aplicación. En estos casos, usamos el
parámetro de color.
Text("Flutter Text Widget Tutorial",
style: TextStyle(
color: Colors.red
)
),

//FontSize
//Usaremos fontSize para
aumentar o disminuir el tamaño del texto.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red
fontSize: 30
)
),

//FontWeight
//El parámetro fontWeight se utiliza para definir si el texto debe ser normal , negrita
o con valores entre w100 y w900.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize: 30,
fontWeight: FontWeight.bold
)
),

//FontStyle
//fontStyle se utiliza para definir el estilo de la fuente, que puede ser normal o
cursiva.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize: 30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.italic
)
),

//LetterSpacing
//El espaciado entre letras define la distancia
entre ellas.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize: 30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.italic
letterSpacing: 20
)
),

//WordSpacing
//El espaciado entre palabras se utiliza para definir la distancia entre ellas.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize: 30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.italic
wordSpacing: 30
)
),

//Foreground
//El parámetro de primer plano se usa para aplicar estilo a las propiedades de
primer plano del texto.
//Background
//El parámetro de fondo se utiliza para definir el estilo de las propiedades del fondo
del texto.
Text("Flutter Text Widget",
style: TextStyle(
fontSize: 30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,
background: new Paint()
..color = Colors.black54
..style = PaintingStyle.fill
..strokeWidth = 1
)
),

//Shadows
//Para mostrar sombras en el texto, se usa el parámetro shadow . El constructor
tiene tres argumentos: color, offset y blurRadius.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,
shadows:
[Shadow(color:Colors.black54, offset: 0ffset(1,2),
blurRadius: 4 ) ]
)
),

//Decoration
//Este parámetro de decoración se utiliza para decorar el texto mediante la clase
TextDecoration.

//TextDecoration.lineThrough
//La constante lineThrough de la clase TextDecoration dibuja una línea horizontal en
el centro del texto.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration:TextDecoration.lineThrough
)
),

//TextDecoration.overline
//La constante overline de la clase TextDecoration muestra una línea horizontal
sobre el texto.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration:TextDecoration.overline
)
),

//TextDecoration.subrayado
//La constante de subrayado de la clase TextDecoration muestra una línea
horizontal debajo del texto.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration:TextDecoration.underline
)
),

//DecorationColor
//En el ejemplo anterior, aplicamos una decoración al texto. Para aplicar color a esa
decoración, usaremos el parámetro DecorationColor.
Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration:TextDecoration.underline,
decorationColor: Colors.black54
)
),

//DecorationStyle
//El parámetro DecorationStyle usa la clase TextDecorationStyle para aplicar un
estilo al texto.

//TextDecorationStyle.double
Container(
padding: EdgeInsets.all(20),
child: Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration: TextDecoration.underline,
decorationColor: Colors.black54,
decorationStyle:
TextDecorationStyle.double
)
),
)

//TextDecorationStyle.dashed
Container(
padding: EdgeInsets.all(20),
child: Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration: TextDecoration.underline,
decorationColor: Colors.black54,
decorationStyle:
TextDecorationStyle.dashed
)
),
)

//TextDecorationStyle.dotted
Container(
padding: EdgeInsets.all(20),
child: Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration: TextDecoration.underline,
decorationColor: Colors.black54,
decorationStyle:
TextDecorationStyle.dotted
)
),
)

//TextDecorationStyle.solid
Container(
padding: EdgeInsets.all(20),
child: Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration: TextDecoration.underline,
decorationColor: Colors.black54,
decorationStyle:
TextDecorationStyle.solid
)
),
)

//TextDecorationStyle.wavy
Container(
padding: EdgeInsets.all(20),
child: Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration: TextDecoration.underline,
decorationColor: Colors.black54,
decorationStyle:
TextDecorationStyle.wavy
)
),
)

//FontFamily
//El parámetro fontFamily se usa para cambiar la fuente/tipo de letra del texto.
Primero, debemos descargar un archivo de la fuente deseada.
Container(
padding: EdgeInsets.all(20),
child: Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
fontStyle: FontStyle.normal,

decoration: TextDecoration.underline,
decorationColor: Colors.black54,
decorationStyle:
TextDecorationStyle.wavy,
fontFamily: "alex"
)
),
)

//Alinear texto
//El parámetro textAlign alinea la posición del texto en un widget padre. Las
constantes de TextAlign son start, end, left, right, center y justify.
Container(
padding: EdgeInsets.all(20),
child: Text("Flutter Text Widget",
style: TextStyle(
color: Colors.red,
fontSize:30,
fontWeight: FontWeight.normal,
),
textAlign: TextAlign.start,
),
)
        ''',
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
        ),
      ),
    );
  }
}