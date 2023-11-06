import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Persona {
  String name;
  String lastName;
  String cuenta;
  
  Persona(this.name, this.lastName, this.cuenta);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Persona> _personas = [
    Persona('Marco', 'Garcia', '20184449'),
    Persona('Juan', 'Salazar', '20181613'),
    Persona('Hugo', 'Luna', '20186359'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.people_alt_outlined),
          onPressed: () {
            // Crear una nueva persona y agregarla a la lista
            Persona nuevaPersona = Persona('Jessica', 'Rojas', '20185294');
            _personas.add(nuevaPersona);

            // Actualizar la interfaz de usuario
            setState(() {});
          },
        ),
        body: ListView.builder(
          itemCount: _personas.length,
          itemBuilder: (BuildContext context, int index){
            return ListTile(
              title: 
                Text(_personas[index].name + ' ' + _personas[index].lastName),
              subtitle: Text(_personas[index].cuenta),
              leading: CircleAvatar(
                child: Text(_personas[index].name.substring(0, 1)),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      ),
    );
  }
}
