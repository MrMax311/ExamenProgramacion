import 'package:flutter/material.dart';
import 'package:flutter_catalogo/screens/screens.dart';

class DropdownbuttonScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;
  final bool isDarkMode;

  const DropdownbuttonScreen({
    super.key,
    required this.onToggleTheme,
    required this.isDarkMode,
  });

  @override
  State<DropdownbuttonScreen> createState() => _DropdownbuttonScreenState();
}

class _DropdownbuttonScreenState extends State<DropdownbuttonScreen> {
  int? _value;
  final List<int> list_items = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dropdownbutton Screen'),
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
              Tab(
                icon: Icon(Icons.arrow_drop_down_circle),
                text: "Drop down button",
              ),
              Tab(icon: Icon(Icons.code), text: "Codigo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            //Primer tab: Drop down button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  //Widgets que se veran en pantalla
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(child: Text("First Item"), value: 1),
                        DropdownMenuItem(child: Text("Second Item"), value: 2),
                      ],
                      onChanged: (int? value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text("Select item"),
                    ),
                  ),

                  //Items
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(child: Text("First Item"), value: 1),
                        DropdownMenuItem(child: Text("Second Item"), value: 2),
                      ],
                      onChanged: (int? value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),

                  //SelectedItemBuilder
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton<int>(
                      value: _value,
                      selectedItemBuilder: (BuildContext context) {
                        return list_items.map<Widget>((int item) {
                          return Text('Item $item');
                        }).toList();
                      },
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
                              value: item,
                            );
                          }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),

                  //Value
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton<int>(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
                              value: item,
                            );
                          }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),

                  //Hint
                  DropdownButton(
                    value: _value,
                    items:
                        list_items.map((int item) {
                          return DropdownMenuItem<int>(
                            child: Text('Log $item'),
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
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
                              value: item,
                            );
                          }).toList(),
                      onChanged: null,
                      hint: Text("Select item"),
                      disabledHint: Text("Disabled"),
                    ),
                  ),

                  //Elevation
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
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
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
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
                      style: TextStyle(color: Colors.green, fontSize: 16),
                    ),
                  ),

                  //Icon
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
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
                      style: TextStyle(color: Colors.green, fontSize: 16),
                      icon: Icon(Icons.arrow_drop_down_circle),
                    ),
                  ),

                  //IconDisabledColor
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
                              value: item,
                            );
                          }).toList(),
                      onChanged: null,
                      hint: Text("Select item"),
                      disabledHint: Text("Disabled"),
                      elevation: 8,
                      style: TextStyle(color: Colors.green, fontSize: 16),
                      icon: Icon(Icons.arrow_drop_down_circle),
                      iconDisabledColor: Colors.red,
                    ),
                  ),

                  //IconEnabledColor
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
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
                      style: TextStyle(color: Colors.green, fontSize: 16),
                      icon: Icon(Icons.arrow_drop_down_circle),
                      iconDisabledColor: Colors.red,
                      iconEnabledColor: Colors.green,
                    ),
                  ),

                  //IconSize
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
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
                      style: TextStyle(color: Colors.green, fontSize: 16),
                      icon: Icon(Icons.arrow_drop_down_circle),
                      iconDisabledColor: Colors.red,
                      iconEnabledColor: Colors.green,
                      iconSize: 40,
                    ),
                  ),

                  //IsExpanded
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
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
                      style: TextStyle(color: Colors.green, fontSize: 16),
                      icon: Icon(Icons.arrow_drop_down_circle),
                      iconDisabledColor: Colors.red,
                      iconEnabledColor: Colors.green,
                      isExpanded: true,
                    ),
                  ),

                  //DropdownColor
                  Container(
                    padding: EdgeInsets.all(20),
                    child: DropdownButton(
                      value: _value,
                      items:
                          list_items.map((int item) {
                            return DropdownMenuItem<int>(
                              child: Text('Log $item'),
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
                      style: TextStyle(color: Colors.green, fontSize: 16),
                      icon: Icon(Icons.arrow_drop_down_circle),
                      iconDisabledColor: Colors.red,
                      iconEnabledColor: Colors.green,
                      isExpanded: true,
                      dropdownColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            //Segundo Tab: Codigo
            //Llamada del codigo de ejemplo
            const DropdownbuttonEx(),
          ],
        ),
      ),
    );
  }
}
