import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class IconScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;
  const IconScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<IconScreen> createState() => _IconScreenState();
}

class _IconScreenState extends State<IconScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Icon Screen'),
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
              Tab(icon: Icon(Icons.phone_android), text: "Icon"),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Primer tab: Icon
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  //Widgets que se veran en pantalla
                  //Icon
                  IconButton(icon: Icon(Icons.play_arrow), onPressed: () {}),

                  //IconSize
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    height: 50,
                    child: IconButton(
                      icon: Icon(Icons.play_arrow),
                      iconSize: 50,
                      onPressed: () {},
                    ),
                  ),

                  //Color
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    height: 50,
                    child: IconButton(
                      icon: Icon(Icons.play_arrow),
                      color: Colors.green,
                      iconSize: 50,
                      onPressed: () {},
                    ),
                  ),

                  //SplashColor
                  //SplashRadius
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
                      onPressed: () {},
                    ),
                  ),

                  //HighlightColor
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
                      highlightColor: Colors.red,
                      onPressed: () {},
                    ),
                  ),

                  //DisabledColor
                  Container(height: 50),
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.green,
                    iconSize: 50,
                    splashRadius: 40,
                    disabledColor: Colors.grey,
                    onPressed: null,
                  ),

                  //Tooltip
                  Container(height: 50),
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    color: Colors.green,
                    iconSize: 50,
                    splashRadius: 40,
                    disabledColor: Colors.grey,
                    onPressed: () {},
                    tooltip: "Play",
                  ),

                  //BackgroundColor
                  Container(height: 50),
                  Ink(
                    child: IconButton(
                      icon: Icon(Icons.play_arrow),
                      color: Colors.green,
                      iconSize: 50,
                      splashRadius: 40,
                      disabledColor: Colors.grey,
                      onPressed: () {},
                      tooltip: "Play",
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.grey,
                      shape: CircleBorder(),
                    ),
                  ),
                ],
              ),
            ),

            //Segundo Tab: Codigo
            //Llamada del codigo de ejemplo
            const IconEx(),
          ],
        ),
      ),
    );
  }
}
