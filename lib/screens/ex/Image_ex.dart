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
// Ejemplo 1: Imagen desde assets con propiedades avanzadas
Image.asset(
  'assets/gato.png',
  color: Colors.purple.withOpacity(0.5),       // Aplica filtro morado semi-transparente
  colorBlendMode: BlendMode.overlay,           // Mezcla colores con modo overlay
  filterQuality: FilterQuality.medium,         // Balance calidad/rendimiento
  width: 250,                                 // Ancho fijo
  height: 250,                                // Alto fijo
  fit: BoxFit.contain,                        // Ajuste sin recortar imagen
  alignment: Alignment.topCenter,              // Alineación superior-centro
  isAntiAlias: true,                          // Bordes suavizados
),

// Ejemplo 2: Imagen desde URL con GridView
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
        color: Colors.blue.withOpacity(0.3),  // Tinte azul claro
        colorBlendMode: BlendMode.softLight,   // Mezcla suave
        filterQuality: FilterQuality.high,     // Máxima calidad
        width: 150,                           // Tamaño definido
        height: 150,
        fit: BoxFit.cover,                    // Cubre el espacio recortando si es necesario
        alignment: Alignment.center,           // Centrado
        isAntiAlias: true,                    // Bordes suavizados
        errorBuilder: (context, error, _) =>   // Manejo de errores
          Icon(Icons.broken_image, color: Colors.red),
      ),
    );
  },
),

// Ejemplo 3: Imagen desde URL directa
Image.network(
  "https://ejemplo.com/imagen.jpg",
  color: Colors.grey,                         // Filtro gris
  colorBlendMode: BlendMode.saturation,       // Mezcla saturación
  filterQuality: FilterQuality.low,           // Optimizado para rendimiento
  width: 300,                                // Dimensiones específicas
  height: 300,
  fit: BoxFit.fill,                          // Rellena distorsionando si es necesario
  alignment: Alignment.bottomRight,           // Alineación inferior-derecha
  isAntiAlias: false,                        // Bordes definidos (pixelado)
  errorBuilder: (context, error, _) =>       // Manejo de errores
    Text("Error al cargar"),
),

// Propiedades explicadas:
// ---------------------------------------------------
// color:         Aplica filtro de color (usar con colorBlendMode)
// colorBlendMode: Cómo se mezcla el color (BlendMode.overlay, .softLight, etc.)
// filterQuality:  Calidad de renderizado (high/medium/low)
// width/height:   Dimensiones fijas del widget
// fit:           Cómo ajustar la imagen al espacio:
//                - cover: Cubre recortando
//                - contain: Muestra completa
//                - fill: Distorsiona para llenar
// alignment:     Posición dentro del espacio disponible
// isAntiAlias:   true = bordes suaves, false = bordes pixelados
''',
        style: TextStyle(
          fontFamily: 'monospace',
          fontSize: 14,
        ),
      ),
    );
  }
}