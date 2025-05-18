import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class TextfieldScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;
  const TextfieldScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<TextfieldScreen> createState() => _TextfieldScreenState();
}

class _TextfieldScreenState extends State<TextfieldScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Textfield Screen'),
          actions: [
            //Lo que hace este boton es para que la pantalla cambie a modo oscuro o a modo claro
            IconButton(
              icon: Icon(
                //el icono del boton
                widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              ), //los iconos
              tooltip: widget.isDarkMode ? 'Modo claro' : 'Modo oscuro',
              onPressed: widget
                  .onToggleTheme, //cuando este sea presionado surja el cambio
            ), //el boton del icono
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.text_fields), text: "Text Fields"),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Primer tab: Text Fields
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  //Widgets que se veran en pantalla
                  //TextField
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: const TextField(),
                  ),
                  //hintext
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Username"),//Indica para que se usa el textfield
                    ),
                  ),
                  //LabelText
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Username",//el nombre y el indicador para que se usa el textfield
                      ),
                    ),
                  ),
                  //HelperText
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        helperText: "Enter username/email ",//la funcion es parecida al hintText pero se usa para dar mas indicaciones y sale adentro del textfield
                      ),
                    ),
                  ),

                  //Border
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),//quita los bordes del textfield
                    ),
                  ),

                  //Rectangular Border
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),//agrega bordes rectangulares al textfield, tambien se pueden usar distintos tipos, como borderradius, borderside, etc
                        hintText: "Username",
                        helperText: "Enter username/email",
                      ),
                    ),
                  ),

                  //Icon
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Login",
                        icon: Icon(Icons.email),//agrega un icono al textfield
                      ),
                    ),
                  ),

                  //PrefixIcon
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Login",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),

                  //SuffixIcon
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        labelText: "Login",
                        suffixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),

                  //PrefixText
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(prefixText: "Email"),
                    ),
                  ),

                  //SuffixText
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(suffixText: "Email"),
                    ),
                  ),

                  //Prefix
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        prefix: CircularProgressIndicator(),
                      ),
                    ),
                  ),

                  //Suffix
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        suffix: CircularProgressIndicator(),
                      ),
                    ),
                  ),

                  //Styling Cursor
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(),
                      cursorColor: Colors.red,
                      cursorWidth: 15,
                    ),
                  ),

                  //Alineando el texto
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(textAlign: TextAlign.right),
                  ),

                  //MaxLength
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(maxLength: 5),
                  ),

                  //MaxLines
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(maxLines: null),
                  ),

                  //Tipo de teclado
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(keyboardType: TextInputType.number),
                  ),

                  //Texto oscurecido en el campo de texto
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(obscureText: true),
                  ),

                  //Opciones de la barra de herramientas en el campo de texto
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      toolbarOptions: ToolbarOptions(
                        cut: false,
                        copy: true,
                        paste: true,
                        selectAll: true,
                      ),
                    ),
                  ),

                  //Campo de texto al tocar ()
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      onTap: () {
                        print("pressed the textfield");
                      },
                    ),
                  ),
                ],
              ),
            ),

            //Segundo Tab: Codigo
            //Llamada del codigo de ejemplo
            const TextfieldEx(),
          ],
        ),
      ),
    );
  }
}
