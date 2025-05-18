import 'package:flutter/material.dart';

class RadioEx extends StatefulWidget {
  const RadioEx({super.key});

  @override
  State<RadioEx> createState() => _RadioExState();
}

class _RadioExState extends State<RadioEx> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//RadioButton
//El botón de radio en flutter no es más que un botón de opción donde el usuario
puede seleccionar sólo una opción de un grupo de opciones. El estado
seleccionado es ON y el no seleccionado es OFF.
//Value
//Utilizaremos la propiedad value para asignar un valor al botón de radio.
Representa el botón de radio. Es una propiedad requerida, lo que significa que si
no se utiliza se producirá un error.
Radio(
value: 1,
onChanged: (value){
},
),

//groupValue
//El groupValue es el valor seleccionado actualmente para un grupo
de botones de opción.
Radio(
value: 1,
groupValue: val,
onChanged: (value) {
setState(() {
val = value;
});
},
),

//activeColor
//Usaremos la propiedad activeColor para cambiar el color del botón
de radio cuando esté en estado seleccionado.
Radio(
value: 1,
groupValue: val,
onChanged: (value) {
setState(() {
val = value;
});
},
activeColor: Colors.green,
),

//Toggleable
//el botón de radio una vez seleccionado no puede ser
deseleccionado. Si queremos que el usuario pueda deseleccionar, utilizaremos la
propiedad toggleable. 
Radio(
value: 1,
groupValue: val,
onChanged: (value) {
setState(() {
val = value;
});
},
toggleable: true,
),

//onChanged
//Utilizaremos la propiedad onChanged para obtener el valor del botón
de radio seleccionado. Cuando marquemos el botón de radio el callback
onChanged invocará y pasará el valor del botón de radio. La propiedad
onChanged es obligatoria.
Radio(
value: 1,
groupValue: val,
onChanged: (value) {
setState(() {
val = value;
});
},
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