import 'package:proyecto_sw/pages/alert_page.dart';
import 'package:proyecto_sw/providers/menu_provider.dart';
import 'package:proyecto_sw/utils/icono_util.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Soy YO'),
    backgroundColor: Colors.blue.shade900,
    actions: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a-/AOh14GjtNV9vpEwZBdjvBpz9i3zKqnTY4eFnMWrkD94TtQ=s576-p-no'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text ('IV'),
              backgroundColor: Colors.blue.shade700,
            ),
          ),
        ],
  ),
  body: _lista(),
  backgroundColor: Colors.black,

  );
}

  
  Widget _lista(){
    //print(menuProvider.opciones);
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      }
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context){
    final List<Widget> opciones = [];

    //validamos que la data no sea nula
    if(data == null){
      return [];
    }

    data.forEach((opcion) {
        final tempTitle = ListTile(
            title: Text(opcion['texto'], style: TextStyle(color: Colors.white)),
            leading: getIcon(opcion['icon']),
            trailing: Icon(Icons.keyboard_arrow_right,
            color: Colors.blue.shade900),
            onTap: () {
              // final route = MaterialPageRoute(builder: (context){
              //   return AlertPage();
              // });
              // Navigator.push(context, route);
              Navigator.pushNamed(context, opcion['ruta']);
            },
        );
        opciones.add(tempTitle);
        opciones.add(Divider());
     });
     return opciones;
  }
}