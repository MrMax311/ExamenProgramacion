import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class ImageScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;
  const ImageScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> imagenurl = [
      'https://cdn.pixabay.com/photo/2023/08/25/16/14/cat-8213331_1280.jpg'
    ];

    void zoomImagen(String url) {
      showDialog(
        context: context,
        builder: (_) => Dialog(
          child: InteractiveViewer(
            child: Image.network(
              url,
              color: Colors.blue, // Aplica un filtro de color azul
              colorBlendMode: BlendMode.softLight, // Mezcla el color con el modo softLight
              filterQuality: FilterQuality.high, // Calidad de filtrado alta para suavizado
              fit: BoxFit.cover, // Ajusta la imagen manteniendo relación de aspecto
              width: 300, // Ancho fijo
              height: 300, // Alto fijo
              alignment: Alignment.center, // Centra la imagen en su contenedor
              isAntiAlias: true, // Suaviza los bordes de la imagen
            ),
          ),
        ),
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Image Screen'),
          actions: [
            IconButton(
              icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: widget.onToggleTheme,
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.image), text: "Image"),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Primer Tab: Image
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Imagen desde assets con todas las propiedades
                  Image.asset(
                    'assets/gato.png',
                    color: Colors.purple.withOpacity(0.5), // Color morado semi-transparente
                    colorBlendMode: BlendMode.overlay, // Mezcla con modo overlay
                    filterQuality: FilterQuality.medium, // Balance entre calidad y rendimiento
                    fit: BoxFit.contain, // Ajusta manteniendo relación sin recortar
                    width: 250, // Ancho específico
                    height: 250, // Alto específico
                    alignment: Alignment.topCenter, // Alinea en la parte superior
                    isAntiAlias: true, // Bordes suavizados
                  ),
                  const SizedBox(height: 20),
                  const Text("es un pequeño mamífero carnívoro domesticado. Es la única especie domesticada de la familia Felidae. Los avances en arqueología y genética han demostrado que la domesticación del gato se produjo en el Cercano Oriente alrededor del 7500 a.C."),

                  // GridView con imágenes desde URL
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: imagenurl.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => zoomImagen(imagenurl[index]),
                        child: Image.network(
                          imagenurl[index],
                          color: Colors.green.withOpacity(0.3), // Tinte verde claro
                          colorBlendMode: BlendMode.colorBurn, // Mezcla intensa
                          filterQuality: FilterQuality.low, // Mejor rendimiento
                          fit: BoxFit.fill, // Rellena todo el espacio
                          width: 150, // Tamaño definido
                          height: 150,
                          alignment: Alignment.bottomRight, // Alinea abajo-derecha
                          isAntiAlias: false, // Bordes más definidos (para pixeles)
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            // Segundo Tab: Código
            const ImageEx(),
          ],
        ),
      ),
    );
  }
}
