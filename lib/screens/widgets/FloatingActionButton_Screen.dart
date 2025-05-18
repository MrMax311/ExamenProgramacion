import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class FloatingactionbuttonScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;
  const FloatingactionbuttonScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<FloatingactionbuttonScreen> createState() => _FloatingactionbuttonScreenState();
}

class _FloatingactionbuttonScreenState
    extends State<FloatingactionbuttonScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Floatingactionbutton Screen'),
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
              Tab(icon: Icon(Icons.add_circle), text: "Floating action button"),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Primer tab: Floating action button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  //Widgets que se veran en pantalla
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    onPressed: () {
                      setState(() {});
                    },
                  ),

                  //BackgroundColor
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    backgroundColor: Colors.red,
                    onPressed: () {},
                  ),

                  //ForegroundColor
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.blue,
                    onPressed: () {},
                  ),

                  //SplashColor
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    splashColor: Colors.red,
                    onPressed: () {},
                  ),

                  //Elevation
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    elevation: 0,
                    onPressed: () {},
                  ),

                  //Ahora establezcamos la elevación a 20 y veamos el resultado.
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    elevation: 20,
                    onPressed: () {},
                  ),

                  //DisabledElevation
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    elevation: 0,
                    disabledElevation: 20,
                    onPressed: null,
                  ),

                  //HighlightElevation
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    elevation: 0,
                    highlightElevation: 20,
                    onPressed: () {},
                  ),

                  //Mini
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    mini: true,
                    onPressed: () {},
                  ),

                  //Shape
                  FloatingActionButton(
                    child: Icon(Icons.save),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.green,
                    shape: Border.all(width: 2, color: Colors.green),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            //Segundo Tab: Codigo
            //Llamada del codigo de ejemplo
            const FloatingactionbuttonEx(),
          ],
        ),
      ),
    );
  }
}
