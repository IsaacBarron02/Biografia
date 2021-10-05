import 'package:flutter/material.dart';
class AlertPage extends StatelessWidget {
  //const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Pendientes'),
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
      backgroundColor: Colors.black,
      body: Center(
        
        child: ElevatedButton(
          child: Text('Vision'),
          onPressed: (){
            _mostrarAlerta(context);
          },
          ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_link),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
    );
  }
  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          title: Text('Vision'),
          content: //Text('Contenido de la alerta')
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Soy un persona a la cual le gusta tener constante aprendizaje, que busca la mejora continua y trata de ayudar a los demás para lograr un aprendizaje compartido.'),
                      Image(image: NetworkImage('https://as.com/meristation/imagenes/2021/01/20/noticias/1611141009_391573_1611141045_noticia_normal.jpg')), 
                      
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Aceptar'),
                      onPressed: (){},
                      ),
                      TextButton(
                        child: Text('Cancelar'),
                        onPressed: (){
                          Navigator.of(context).pop();
                        },
                        ),
                  ],
        );
      });
  }
}