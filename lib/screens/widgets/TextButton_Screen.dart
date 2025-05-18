import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class TextbuttonScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;
  const TextbuttonScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<TextbuttonScreen> createState() => _TextbuttonScreenState();
}

class _TextbuttonScreenState extends State<TextbuttonScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Textbutton Screen'),
          actions: [
            //Lo que hace este boton es para que la pantalla cambie a modo oscuro o a modo claro
            IconButton(
              icon: Icon(//el icono del boton
                widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              ),//los iconos
              tooltip: widget.isDarkMode ? 'Modo claro' : 'Modo oscuro',
              onPressed: widget.onToggleTheme,//cuando este sea presionado surja el cambio
            ),//el boton del icono
          ],

          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.description), text: "Text button"),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Primer tab: Text button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  //Widgets que se veran en pantalla
                  //TextButton.icon
                  TextButton.icon(
                    icon: Icon(Icons.save),
                    label: Text("SAVE"),
                    onPressed: () {},
                  ),

                  //Styling Flutter TextButton
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green,
                      ),
                    ),
                    onPressed: () {},
                    child: Text("button"),
                  ),

                  //Usando styleFrom() para cambiar el color de primer plano.
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.green),
                    onPressed: () {},
                    child: Text("button"),
                  ),

                  //Flutter TextButton backgroundColor
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                    ),
                    onPressed: () {},
                  ),

                  //Flutter TextButton disabledColor(onSurface)
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
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Colors.red, width: 1),
                    ),
                    onPressed: () {},
                  ),

                  //Flutter TextButton minimumSize
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Colors.red, width: 1),
                      minimumSize: Size(100, 50),
                    ),
                    onPressed: () {},
                  ),

                  //Flutter TextButton shadowColor
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Colors.red, width: 1),
                      minimumSize: Size(100, 50),
                    ),
                    onPressed: () {},
                  ),

                  //Flutter TextButton shape
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
                    onPressed: () {},
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
                    onPressed: () {},
                  ),

                  //Flutter TextButton padding

                  //EdgeInsets.only()
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Colors.red, width: 1),
                      minimumSize: Size(100, 50),
                      padding: EdgeInsets.only(
                        left: 60,
                        right: 60,
                        top: 15,
                        bottom: 15,
                      ),
                    ),
                    onPressed: () {},
                  ),

                  //EdgeInsets.all()
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Colors.red, width: 1),
                      minimumSize: Size(100, 50),
                      padding: EdgeInsets.all(30),
                    ),
                    onPressed: () {},
                  ),

                  //EdgeInsets.symmetric()
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Colors.red, width: 1),
                      minimumSize: Size(100, 50),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                    ),
                    onPressed: () {},
                  ),

                  //Flutter TextButton textStyle
                  TextButton(
                    child: Text("button"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      side: BorderSide(color: Colors.red, width: 1),
                      minimumSize: Size(100, 50),
                      padding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 50,
                      ),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    onPressed: () {},
                  ),

                  //Comparing ButtonStyle and styleFrom

                  //ButtonStyle
                  TextButton(
                    child: Text("button"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green,
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(100, 50),
                      ),
                      shape: MaterialStateProperty.all<CircleBorder>(
                        CircleBorder(),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(30),
                      ),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                      ),
                    ),
                    onPressed: () {},
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
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            //Segundo Tab: Codigo
            //Llamada del codigo de ejemplo
            const TextbuttonEx(),
          ],
        ),
      ),
    );
  }
}
