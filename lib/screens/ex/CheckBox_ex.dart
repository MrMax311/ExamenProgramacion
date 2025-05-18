import 'package:flutter/material.dart';

class CheckboxEx extends StatefulWidget {
  const CheckboxEx({super.key});

  @override
  State<CheckboxEx> createState() => _CheckboxExState();
}

class _CheckboxExState extends State<CheckboxEx> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//Value
//Usamos la propiedad value para establecer el estado del checkbox. Es un
valor booleano (true/false).
body: Container(
width: double.infinity,
height: 100,
child: Checkbox(
value: false,
onChanged: (value) {
setState((){
_value = value;
});
},
),
),

//activeColor
//Utilizamos activeColor para cambiar el color que aparece cuando el
checkbox está marcado.
body: Container(
width: double.infinity,
height: 100,
child: Checkbox(
value: false,
onChanged: (value) {
setState((){
_value = value;
});
},
activeColor: Colors.green,
),
),

//checkColor
//Usamos checkColor para modificar el color de la marca de
verificación (✓) cuando el checkbox está activado.
body: Container(
width: double.infinity,
height: 100,
child: Checkbox(
value: false,
onChanged: (value) {
setState((){
_value = value;
});
},
activeColor: Colors.green,
checkColor: Colors.red,
),
),

//onChanged
//Utilizaremos el callback onChanged para escuchar el cambio de
estado del checkbox.

//Tristate
//Si establecemos la propiedad tristate a true, el valor del checkbox puede
ser true, false o null. El checkbox muestra un guión cuando su valor es nulo. Si
tristate es false (por defecto), el valor no debe ser null
body: Container(
width: double.infinity,
height: 100,
child: Checkbox(
value: false,
onChanged: (value) {
setState((){
_value = value;
});
},
activeColor: Colors.green,
tristate: true,
),
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