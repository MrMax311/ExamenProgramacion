import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class TextScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;
  const TextScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Text Screen'),
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
              Tab(icon: Icon(Icons.text_snippet), text: "Text"),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Primer tab: Text Screen
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  //Widgets que se veran en pantalla
                  //Text

                  //style

                  //Color
                  Text(
                    "Flutter Text Widget Tutorial",
                    style: TextStyle(color: Colors.red),
                  ),

                  //FontSize
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),

                  //FontWeight
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //FontStyle
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  //LetterSpacing
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 20,
                    ),
                  ),

                  //WordSpacing
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      wordSpacing: 30,
                    ),
                  ),

                  //Foreground

                  //Background
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      background:
                          new Paint()
                            ..color = Colors.black54
                            ..style = PaintingStyle.fill
                            ..strokeWidth = 1,
                    ),
                  ),

                  //Shadows
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      shadows: [
                        Shadow(
                          color: Colors.black54,
                          offset: Offset(1, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),

                  //Decoration

                  //TextDecoration.lineThrough
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,

                      decoration: TextDecoration.lineThrough,
                    ),
                  ),

                  //TextDecoration.overline
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,

                      decoration: TextDecoration.overline,
                    ),
                  ),

                  //TextDecoration.subrayado
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,

                      decoration: TextDecoration.underline,
                    ),
                  ),

                  //DecorationColor
                  Text(
                    "Flutter Text Widget",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,

                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black54,
                    ),
                  ),

                  //DecorationStyle

                  //TextDecorationStyle.double
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Flutter Text Widget",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,

                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black54,
                        decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                  ),

                  //TextDecorationStyle.dashed
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Flutter Text Widget",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,

                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black54,
                        decorationStyle: TextDecorationStyle.dashed,
                      ),
                    ),
                  ),

                  //TextDecorationStyle.dotted
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Flutter Text Widget",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,

                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black54,
                        decorationStyle: TextDecorationStyle.dotted,
                      ),
                    ),
                  ),

                  //TextDecorationStyle.solid
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Flutter Text Widget",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,

                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black54,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ),

                  //TextDecorationStyle.wavy
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Flutter Text Widget",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,

                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black54,
                        decorationStyle: TextDecorationStyle.wavy,
                      ),
                    ),
                  ),

                  //FontFamily
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Flutter Text Widget",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,

                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black54,
                        decorationStyle: TextDecorationStyle.wavy,
                        fontFamily: "alex",
                      ),
                    ),
                  ),

                  //Alinear texto
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      "Flutter Text Widget",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),

            //Segundo Tab: Codigo
            //Llamada del codigo de ejemplo
            const TextEx(),
          ],
        ),
      ),
    );
  }
}
