import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class CheckboxScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;
  const CheckboxScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Checkbox Screen'),
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
              Tab(icon: Icon(Icons.indeterminate_check_box), text: "Checkbox"),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Primer tab: Checkbox
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  //Widgets que se veran en pantalla
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {
                          value = value;
                        });
                      },
                    ),
                  ),

                  //activeColor
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {
                          value = value;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                  ),

                  //checkColor
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {
                          value = value;
                        });
                      },
                      activeColor: Colors.green,
                      checkColor: Colors.red,
                    ),
                  ),

                  //onChanged
                  //Tristate
                  SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {
                          value = value;
                        });
                      },
                      activeColor: Colors.green,
                      tristate: true,
                    ),
                  ),
                ],
              ),
            ),

            //Segundo Tab: Codigo
            //Llamada del codigo de ejemplo
            const CheckboxEx(),
          ],
        ),
      ),
    );
  }
}
