import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class ElevatedbuttonScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;

  const ElevatedbuttonScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<ElevatedbuttonScreen> createState() => _ElevatedbuttonScreenState();
}

class _ElevatedbuttonScreenState extends State<ElevatedbuttonScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Elevatedbutton Screen'),
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
              Tab(icon: Icon(Icons.sunny), text: "Elevated button"),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Primer tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  // Botón básico
                  ElevatedButton(child: const Text("Button"), onPressed: () {}),

                  // ElevatedButton.icon
                  ElevatedButton.icon(
                    icon: const Icon(Icons.save),
                    label: const Text("Save"),
                    onPressed: () {},
                  ),

                  // foregroundColor
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                  ),

                  // backgroundColor foregroundColor
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {},
                  ),

                  // onSurface
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                    ),
                    onPressed: null,
                  ),

                  // overlayColor ButtonStyle
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.purple,
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      overlayColor: MaterialStateProperty.all<Color>(
                        Colors.grey,
                      ),
                    ),
                    onPressed: () {},
                  ),

                  // side
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    onPressed: () {},
                  ),

                  // elevation
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                      side: const BorderSide(color: Colors.black, width: 1),
                      elevation: 20,
                    ),
                    onPressed: () {},
                  ),

                  // minimumSize
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                      side: const BorderSide(color: Colors.black, width: 1),
                      elevation: 20,
                      minimumSize: const Size(150, 150),
                    ),
                    onPressed: () {},
                  ),

                  // shadowColor
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                      side: const BorderSide(color: Colors.black, width: 1),
                      elevation: 20,
                      minimumSize: const Size(150, 150),
                      shadowColor: Colors.teal,
                    ),
                    onPressed: () {},
                  ),

                  //Shape
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                      side: const BorderSide(color: Colors.black, width: 1),
                      elevation: 20,
                      minimumSize: const Size(150, 150),
                      shadowColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                  ),

                  //EdgeInsets.all()
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                      side: const BorderSide(color: Colors.black, width: 1),
                      elevation: 20,
                      minimumSize: const Size(150, 150),
                      shadowColor: Colors.teal,
                      padding: const EdgeInsets.all(30),
                    ),
                    onPressed: () {},
                  ),

                  //EdgeInsets.symmetric()
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                      side: const BorderSide(color: Colors.black, width: 1),
                      elevation: 20,
                      minimumSize: const Size(150, 150),
                      shadowColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 120,
                      ),
                    ),
                    onPressed: () {},
                  ),

                  //TextStyle
                  ElevatedButton(
                    child: const Text("Button"),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      disabledBackgroundColor: Colors.grey,
                      side: const BorderSide(color: Colors.black, width: 1),
                      elevation: 20,
                      minimumSize: const Size(150, 150),
                      shadowColor: Colors.teal,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 120,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontFamily: "alex",
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // Segundo tab
            const ElevatedbuttonEx(),
          ],
        ),
      ),
    );
  }
}
