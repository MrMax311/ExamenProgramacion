import 'package:flutter/material.dart';

class DropdownbuttonEx extends StatefulWidget {
  const DropdownbuttonEx({super.key});

  @override
  State<DropdownbuttonEx> createState() => _DropdownbuttonExState();
}

class _DropdownbuttonExState extends State<DropdownbuttonEx> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: const SelectableText(
        //Aqui van todos los codigos correspondientes a los ejemplos
        '''
//Dropdown Button
//El botón desplegable es un widget de material que muestra una lista desplegable
en Flutter. El usuario puede seleccionar un elemento de una lista. El elemento
seleccionado se mostrará en el botón junto con una flecha. La flecha indica que se
trata de una lista desplegable, por lo que el usuario puede seleccionar otro
elemento.
Container(
padding: EdgeInsets.all(20),
child: DropdownButton(
value: _value,
items: [
DropdownMenuItem(
child: Text("First Item"),
value: 1,
),
DropdownMenuItem(
child: Text("Second Item"),
value: 2,
)
],

onChanged: (int value) {
setState(() {
_value = value;
});
},
hint:Text("Select item")
),
),

//Items
//Usaremos esta propiedad para definir los elementos que se mostrarán en la lista
desplegable. Podemos definirlos directamente o mediante una lista.
Container(
padding: EdgeInsets.all(20),
child: DropdownButton(
value: _value,
items: [
DropdownMenuItem(
child: Text("First Item"),
value: 1,
),
DropdownMenuItem(
child: Text("Second Item"),
value: 2,
)
],

onChanged: (int value) {
setState(() {
_value = value;
});
},
),
),

//SelectedItemBuilder
//un botón desplegable muestra una lista de elementos. Al
seleccionar una opción, esta se mostrará en el botón. Si queremos mostrar otro
texto en lugar de la opción seleccionada, usaremos selectedItemBuilder.
DropdownButton(
value: _value,
selectedItemBuilder: (BuildContext
{
context)
return list_items.map<Widget>((int
item) {
return Text('item S/item');
}).toList();
},
items: list_items.map((int item) {
return DropdownMenuItem<int>(
child: Text('Log S/item'),
value: item,
);
}).toList(),
onChanged: (value) {
setState(() {
_value = value;
});
},
),

//Value
//Usaremos la propiedad value para asignar el elemento seleccionado al botón
desplegable.
onChanged: (value) {
setState(() {
_value = value;
});
},

//Hint
//el botón desplegable no mostrará nada más que el
indicador de abajo.
DropdownButton(
value: _value,
items: list_items.map((int item) {
return DropdownMenuItem<int>(
child: Text('Log S/item'),
value: item,
);
}).toList(),
onChanged: (value) {
setState(() {
_value = value;
});
},
hint: Text("Select item"),
),

//DisabledHint
//Usaremos la propiedad disabledHint para mostrar un texto cuando el botón
desplegable esté deshabilitado.
Container(
padding: EdgeInsets.all(20),
child: DropdownButton(
valu: _value,
items: list_items.map((int item) {
return Dropdown MenuItem<int>(
child: Text('Log S/item'),
value: item,
);
}).toList(),
onChanged: (value) {
setState(() {
_value = value;
});
},
hint: Text("Select item"),
disabledHint: Text("Disabled"), 
), 
),

//Elevation
//Usaremos la propiedad de elevación para elevar la lista desplegable. El valor
puede ser de 1 a 9.
Container(
padding: EdgeInsets.all(20),
child: DropdownButton(
valu: _value,
items: list_items.map((int item) {
return Dropdown MenuItem<int>(
child: Text('Log S/item'),
value: item,
);
}).toList(),
onChanged: (value) {
setState(() {
_value = value;
});
},
hint: Text("Select item"),
disabledHint: Text("Disabled"),
elevation: 8, 
), 
),

//Style
//Usaremos la propiedad de estilo para aplicar estilos como color, tamaño de fuente,
etc. a los elementos del menú desplegable.
Container(
padding: EdgeInsets.all(20),
child: DropdownButton(
valu: _value,
items: list_items.map((int item) {
return Dropdown MenuItem<int>(
child: Text('Log S/item'),
value: item,
);
}).toList(),
onChanged: (value) {
setState(() {
_value = value;
});
},
hint: Text("Select item"),
disabledHint: Text("Disabled"),
elevation: 8, 
style: TextStyle(color: Colors.green,
fontSize: 16),
), 
),

//Icon
//La propiedad de ícono se utiliza para establecer el ícono en el botón desplegable.
Container(
 padding: EdgeInsets.all(20),
 child:DropdownButton(
 value: _value,
 items: list_items.map((int item) {
 return DropdownMenuItem<int>(
 child: Text('Log S/item'),
 value: item,
 );
 }).toList(),
 onChanged: (value) {
 setState(() {
 _value = value;
 });
 },
 hint:Text("Select item"),
 disabledHint:Text("Disabled"),
 elevation: 8,
 style:TextStyle(color:Colors.green, fontSize: 16),
 icon: Icon(Icons.arrow_drop_down_circle),
 ),
 ),

//IconDisabledColor
//Esta propiedad se usa para establecer el color del icono cuando el botón
desplegable está deshabilitado. Para mostrar la salida, deshabilito el botón
estableciendo "onChange" en nulo.
Container(
 padding: EdgeInsets.all(20),
 child:DropdownButton(
 value: _value,
 items: list_items.map((int item) {
 return DropdownMenuItem<int>(
 child: Text('Log S/item'),
 value: item,
 );
 }).toList(),
 onChanged: (value) {
 setState(() {
 _value = value;
 });
 },
 hint:Text("Select item"),
 disabledHint:Text("Disabled"),
 elevation: 8,
 style:TextStyle(color:Colors.green, fontSize: 16),
 icon: Icon(Icons.arrow_drop_down_circle),
 iconDisabledColor: Colors.red,
 ),
 ),

//IconEnabledColor
//Esta propiedad se utiliza para establecer el color del icono del botón desplegable.
Este color solo se aplicará si el botón está habilitado.
Container(
 padding: EdgeInsets.all(20),
 child:DropdownButton(
 value: _value,
 items: list_items.map((int item) {
 return DropdownMenuItem<int>(
 child: Text('Log S/item'),
 value: item,
 );
 }).toList(),
 onChanged: (value) {
 setState(() {
 _value = value;
 });
 },
 hint:Text("Select item"),
 disabledHint:Text("Disabled"),
 elevation: 8,
 style:TextStyle(color:Colors.green, fontSize: 16),
 icon: Icon(Icons.arrow_drop_down_circle),
 iconDisabledColor: Colors.red,
 iconEnabledColor: Colors.green,
 ),
 ),

//IconSize
//La propiedad IconSize se utiliza para definir el tamaño del icono del botón
desplegable.
Container(
 padding: EdgeInsets.all(20),
 child:DropdownButton(
 value: _value,
 items: list_items.map((int item) {
 return DropdownMenuItem<int>(
 child: Text('Log S/item'),
 value: item,
 );
 }).toList(),
 onChanged: (value) {
 setState(() {
 _value = value;
 });
 },
 hint:Text("Select item"),
 disabledHint:Text("Disabled"),
 elevation: 8,
 style:TextStyle(color:Colors.green, fontSize: 16),
 icon: Icon(Icons.arrow_drop_down_circle),
 iconDisabledColor: Colors.red,
 iconEnabledColor: Colors.green,
 iconSize: 40,
 ),
 ),

//IsExpanded
//Esta propiedad se utiliza para expandir el botón desplegable a su ancho máximo.
Si se establece en "true", se expandirá, mientras que si se establece en "false", el
ancho del botón se mantendrá al predeterminado.
Container(
 padding: EdgeInsets.all(20),
 child:DropdownButton(
 value: _value,
 items: list_items.map((int item) {
 return DropdownMenuItem<int>(
 child: Text('Log S/item'),
 value: item,
 );
 }).toList(),
 onChanged: (value) {
 setState(() {
 _value = value;
 });
 },
 hint:Text("Select item"),
 disabledHint:Text("Disabled"),
 elevation: 8,
 style:TextStyle(color:Colors.green, fontSize: 16),
 icon: Icon(Icons.arrow_drop_down_circle),
 iconDisabledColor: Colors.red,
 iconEnabledColor: Colors.green,
 isExpanded: true,
 ),
 ),

//DropdownColor
//La propiedad DropdownColor se utiliza para establecer el color de la lista
desplegable.
  Container(
 padding: EdgeInsets.all(20),
 child:DropdownButton(
 value: _value,
 items: list_items.map((int item) {
 return DropdownMenuItem<int>(
 child: Text('Log S/item'),
 value: item,
 );
 }).toList(),
 onChanged: (value) {
 setState(() {
 _value = value;
 });
 },
 hint:Text("Select item"),
 disabledHint:Text("Disabled"),
 elevation: 8,
 style:TextStyle(color:Colors.green, fontSize: 16),
 icon: Icon(Icons.arrow_drop_down_circle),
 iconDisabledColor: Colors.red,
 iconEnabledColor: Colors.green,
 isExpanded: true,
 dropdownColor: Colors.blue,
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