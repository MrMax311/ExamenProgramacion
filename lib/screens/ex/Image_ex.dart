import 'package:flutter/material.dart';

class ImageEx extends StatefulWidget {
  const ImageEx({super.key});

  @override
  State<ImageEx> createState() => _ImageExState();
}

class _ImageExState extends State<ImageEx> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        '''
//Imagen desde assets con propiedades avanzadas
Image.asset(
  'assets/gato.png',
  color: Colors.purple.withOpacity(0.5),// Aplica filtro morado semi-transparente
  colorBlendMode: BlendMode.overlay,// Mezcla colores con modo overlay
  filterQuality: FilterQuality.medium,// Balance calidad/rendimiento
  width: 250,// Ancho fijo
  height: 250,// Alto fijo
  fit: BoxFit.contain,// Ajuste sin recortar imagen
  alignment: Alignment.topCenter,// Alineación superior-centro
  isAntiAlias: true,// Bordes suavizados
),

//Imagen desde URL con GridView
GridView.builder(
  shrinkWrap: true,
  itemCount: imagenurl.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
  ),
  itemBuilder: (context, index) {
    return GestureDetector(
      onTap: () => zoomImagen(imagenurl[index]),
      child: Image.network(
        imagenurl[index],
        color: Colors.blue.withOpacity(0.3),// Tinte azul claro
        colorBlendMode: BlendMode.softLight,// Mezcla suave
        filterQuality: FilterQuality.high,// Máxima calidad
        width: 150,// Tamaño definido
        height: 150,
        fit: BoxFit.cover,// Cubre el espacio recortando si es necesario
        alignment: Alignment.center,// Centrado
        isAntiAlias: true,// Bordes suavizados
        errorBuilder: (context, error, _) => Icon(Icons.broken_image, color: Colors.red),// Manejo de errores
      ),
    );
  },
),

//Imagen desde URL directa
Image.network(
  "https://ejemplo.com/imagen.jpg",
  color: Colors.grey,// Filtro gris
  colorBlendMode: BlendMode.saturation,// Mezcla saturación
  filterQuality: FilterQuality.low,// Optimizado para rendimiento
  width: 300,// Dimensiones específicas
  height: 300,
  fit: BoxFit.fill,// Rellena distorsionando si es necesario
  alignment: Alignment.bottomRight,// Alineación inferior-derecha
  isAntiAlias: false,// Bordes definidos (pixelado)
  errorBuilder: (context, error, _) => Text("Error al cargar"),// Manejo de errores
),
''',
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
        ),
      ),
    );
  }
}
