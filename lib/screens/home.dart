import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //links

class Home extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;

    const Home({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode
    });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
        child: Scaffold(
        appBar: AppBar(
          title: const Text("Catalogo de Widgets"),
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
          //los botones de acerca de y widgets
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.widgets), text: "Widgets"),
              Tab(icon: Icon(Icons.info), text: "Acerca de"),
            ],
          ),
        ),
        //las opciones acerca y widgets
        body: TabBarView(
          children: [
            //widgets
            const MiCatalogo(),
            //acerca de
            Column(
              children: [
                Text("Vigil Corrujedo Juan Pablo\n6 - V"),//el texto
                //boton para el github
                TextButton(onPressed: () => launchUrl(Uri.parse('https://github.com/MrMax311')), child: Text("GitHub"))
              ],
            ),
            
          ]
        ),

      ),
    );
  }
}

class MiCatalogo extends StatefulWidget {
  const MiCatalogo({ super.key });

  @override
  State<MiCatalogo> createState() => _MiCatalogo();
}
  List<String> catalogo = ["TextField","FloatingActionButton","ElevatedButton","Text","Icon","Radio","Checkbox","DropdownButton","TextButton","Image"
  ];
  class _MiCatalogo extends State<MiCatalogo> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: catalogo.length,
      itemBuilder: (context, index){

        String widgets = catalogo[index];

      return ListTile(
        title: Text(catalogo[index]),
        leading: const Icon(Icons.code),
        trailing:const Icon(Icons.arrow_forward),
        onTap: (){
          /* ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Elemento seleccionado: ${objetos[index]}') 
    );*/
final routeName = '/${widgets.toLowerCase()}';
Navigator.pushNamed(context, routeName);

  },
  
  );
      },
    );
  }
}