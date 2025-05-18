import 'package:flutter/material.dart';

class TextfieldEx extends StatefulWidget {
  const TextfieldEx({super.key});

  @override
  State<TextfieldEx> createState() => _TextfieldExState();
}

class _TextfieldExState extends State<TextfieldEx> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//TextField
//TextField es simplemente un widget que acepta la entrada del usuario.
Container(
padding: EdgeInsets.all(20),
child:TextField()
)
//hintText
//La sugerencia es solo un marcador de posición. Se utiliza para indicar al usuario 
qué información debe introducirse en el campo de texto. Desaparece cuando se 
selecciona el campo de texto. 
Por ejemplo: correo electrónico, nombre de usuario, contraseña, etc.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
              ),
            )
        )

//LabelText
//La etiqueta es similar a la sugerencia, pero ocultará la sugerencia hasta que el 
campo de texto esté enfocado. Cuando el usuario toca el campo de texto, la 
etiqueta irá hacia arriba y aparecerá la sugerencia.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Username",
              ),
            )
        )

//HelperText
//Si no queremos mostrar una etiqueta, pero queremos mostrar un mensaje, 
podemos usar helperText .
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                helperText: "Enter username/email ",
              ),
            )
        )

//Border
//Si no queremos el borde debajo del texto, podemos hacerlo utilizando el siguiente 
fragmento de código
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            )
        )

//Rectangular Border
//Para darle un borde rectangular a TextField podemos hacerlo usando la propiedad 
border.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username",
                helperText: "Enter username/email",
              ),
            )
        )
  
//Icon
//Para agregar un icono a TextField podemos hacerlo usando la propiedad
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Login",
                icon : Icon(Icons.email)
              ),
            )
            )

//PrefixIcon
//Agrega un icono pero adentro del TextField
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Login",
                prefixIcon: Icon(Icons.email)
              ),
            )
            )

//SuffixIcon
//Hace lo mismo que el PrefixIcon, solo con la diferencia que el icono esta ubicado a la derecha del TextField
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Login",
                suffixIcon: Icon(Icons.email)
              ),
            )
            )

//PrefixText
//Se mostrará cuando el campo de texto esté enfocado. 
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefixText: "Email"
              ),
            )
            )

//SuffixText
//Se mostrará cuando el campo de texto esté enfocado pero esta vez a la derecha.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                suffixText: "Email"
              ),
            )
            )

//Prefix
//Se mostrara un indicador de carga en el TextField.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefix: 
CircularProgressIndicator(),
              ),
            )
            )

//Suffix
//Se mostrara un indicador de carga en el TextField pero a la derecha.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                suffix: 
CircularProgressIndicator(),
              ),
            )
            )

//Styling Cursor
//Podemos personalizar el cursor de un campo de texto con diferentes propiedades
como color, ancho, etc. Echemos un vistazo.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                cursorColor: Colors.deepOrange,
                cursorWidth: 15,
              ),
            )
            )

//Alineando el texto
//Podemos alinear el texto del TextField usando la propiedad textAlign , que toma la
clase TextAlign . Esta clase tiene constantes como derecha, izquierda, inicio, fin,
centro y justificación.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              textAlign: TextAlign.right,
            )
            )

//MaxLength
//Podemos controlar el número máximo de caracteres escritos en el TextField.
También podemos definir el número de líneas que un TextField puede expandir.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              maxLength: 5,
            )
            )

//MaxLines
//A veces, necesitamos que TextField se expanda si la primera línea llega al final.
En tales casos, debemos establecer la propiedad maxLines en null . Por defecto,
este valor es 1.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              maxLines: null,
            )
            )

//Tipo de teclado
//Usando la propiedad keyboardType, podemos cambiar el tipo de teclado que se
mostrará. Utiliza la clase TextInputType, que tiene varias constantes. Estas
constantes son text, number, datetime, numberWithOptions, phone, multiline , etc.
Hay muchas más. Les mostraré un ejemplo. Consulten el resto, ya que no
podemos abordar todos los temas en un solo artículo.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.number,
            )
            )

//Texto oscurecido en el campo de texto
//Esto se usa para ocultar o mostrar puntos en lugar de texto. Se usa para
contraseñas, etc. Si se establece como verdadero, el texto ingresado se mostrará
en puntos.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
            )
            )

//Opciones de la barra de herramientas en el campo de texto
//Esto agregará/eliminará opciones de la barra de herramientas como cortar, copiar,
pegar, seleccionar todo.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              toolbarOptions: ToolbarOptions(
              cut: false,
              copy: true,
              paste: true,
              selectAll: true),
            )
            )

//Campo de texto al tocar ()
//Cuando el usuario toca el TextField, se invoca el método onTap. Podemos hacer
cosas como mostrar un mensaje o algo más al tocarlo.
Container(
          padding: EdgeInsets.all(20),
            child: TextField(
              onTap: (){
              print("pressed the textfield");
              },
            )
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