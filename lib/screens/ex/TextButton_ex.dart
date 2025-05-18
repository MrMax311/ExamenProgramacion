import 'package:flutter/material.dart';

class TextbuttonEx extends StatefulWidget {
  const TextbuttonEx({super.key});

  @override
  State<TextbuttonEx> createState() => _TextbuttonExState();
}

class _TextbuttonExState extends State<TextbuttonEx> {
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//TextButton
//Un botón de texto es un simple botón en Flutter, sin elevación ni fondo por defecto.
Podemos realizar alguna acción dentro de la función de llamada onPressed
cuando un usuario hace clic en él.

//TextButton.icon  
//Contiene widgets de icono y etiqueta, y las retrollamadas onPressed y onLongPress.  
TextButton.icon(
  icon: Icon(Icons.save),
  label: Text("SAVE"),
  onPressed: () {
  },
),

//Styling Flutter TextButton  
//Podemos aplicar estilo al widget TextButton cambiando colores, backgroundColor, etc.  
TextButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
  ),
  onPressed: () {
  },
  child: Text("button"),
),

//Usando styleFrom() para cambiar el color de primer plano.  
TextButton(
  style: TextButton.styleFrom(
    foregroundColor: Colors.green,
  ),
  onPressed: () {
  },
  child: Text("button"),
),

//Flutter TextButton backgroundColor  
//Usaremos la propiedad backgroundColor para aplicar color de fondo al TextButton.  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
  ),
  onPressed: () {
  },
),

//Flutter TextButton disabledColor(onSurface)  
//Usaremos la propiedad onSurface (disabledColor) para definir el color del texto de  
TextButton que queremos mostrar cuando el botón esté deshabilitado. Para  
deshabilitar el botón, establezco onPressed en nulo para mostrar la salida.  
TextButton(
  child: Text("Button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    disabledForegroundColor: Colors.black.withOpacity(0.38),
  ),
  onPressed: null,
),

//Flutter TextButton elevation  
//Usaremos la propiedad de elevación para aplicar elevación al TextButton. La  
elevación hace que el botón se vea como si se elevara del fondo/superficie donde  
se encuentra. TextButton no permite "elevation" directamente. Se recomienda usar "ElevatedButton" si se requiere elevación.  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
  ),
  onPressed: () {
  },
),

//Flutter TextButton minimumSize  
//Usaremos la propiedad minimumSize para definir el tamaño mínimo que queremos  
//que se muestre el TextButton.  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
    minimumSize: Size(100, 50),
  ),
  onPressed: () {
  },
),

//Flutter TextButton shadowColor  
//Usaremos la propiedad shadowColor para cambiar el color de la sombra que  
aparece cuando se eleva el TextButton. *Nota: shadowColor es ignorado por TextButton.*  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
    minimumSize: Size(100, 50),
  ),
  onPressed: () {
  },
),

//Flutter TextButton shape  
//Usando la propiedad de forma, podemos aplicar diferentes formas al TextButton.  
Podemos aplicar formas como rectangular, rectangular redondeada, circular, etc.  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
    minimumSize: Size(100, 50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  ),
  onPressed: () {
  },
),

//Boton circular  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
    minimumSize: Size(100, 50),
    shape: CircleBorder(),
  ),
  onPressed: () {
  },
),

//Flutter TextButton padding  
//La propiedad padding proporciona relleno al TextButton, es decir, espaciado  
interno. Utiliza EdgeInsetsGeometry, que tiene tres métodos: all, only y symmetric.

//EdgeInsets.only()  
//Podemos especificar hasta cuatro valores, lo que significa que podemos definir los  
/ados deseados y dejar los lados para los que no queremos definir relleno.  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
    minimumSize: Size(100, 50),
    padding: EdgeInsets.only(left: 60, right: 60, top: 15, bottom: 15),
  ),
  onPressed: () {
  },
),

//EdgeInsets.all()  
//Acepta un valor que se aplicará a todos los lados.  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
    minimumSize: Size(100, 50),
    padding: EdgeInsets.all(30),
  ),
  onPressed: () {
  },
),

//EdgeInsets.symmetric()  
//Acepta valores horizontales y verticales. Puede proporcionar solo valores  
horizontales, solo valores verticales o ambos.  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
    minimumSize: Size(100, 50),
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
  ),
  onPressed: () {
  },
),

//Flutter TextButton textStyle  
//La propiedad textStyle se utiliza para aplicar diferentes propiedades, como  
fontStyle, fontSize, etc., al texto del TextButton.  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    side: BorderSide(color: Colors.red, width: 1),
    minimumSize: Size(100, 50),
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
    textStyle: TextStyle(
      fontSize: 20,
      fontStyle: FontStyle.italic,
    ),
  ),
  onPressed: () {
  },
),

//Comparing ButtonStyle and styleFrom

//ButtonStyle  
TextButton(
  child: Text("button"),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    minimumSize: MaterialStateProperty.all<Size>(Size(100, 50)),
    shape: MaterialStateProperty.all<CircleBorder>(CircleBorder()),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(30)),
    textStyle: MaterialStateProperty.all<TextStyle>(
      TextStyle(
        fontSize: 20,
        fontStyle: FontStyle.italic,
      ),
    ),
  ),
  onPressed: () {
  },
),

//styleFrom  
TextButton(
  child: Text("button"),
  style: TextButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    minimumSize: Size(100, 50),
    shape: CircleBorder(),
    padding: EdgeInsets.all(30),
    textStyle: TextStyle(
      fontSize: 20,
      fontStyle: FontStyle.italic,
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