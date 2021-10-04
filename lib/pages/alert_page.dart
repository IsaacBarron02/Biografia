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
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/proxy/Wr54TWrhl-z4adzdBt2my4rie_l4UdpfD_eQDS3lBjSKJ3774iVIFPaa8Lam4NGfz2FDoFrMaqizQwHfk3LUZiSqVO6ckcryq2oG8U3vdTkKZU0zb6eSMDYiNA'),
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
          child: Text('Orden de trabajo'),
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
          title: Text('Orden: FM934'),
          content: //Text('Contenido de la alerta')
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('Tool Room'),
                      Image(image: NetworkImage('https://2.bp.blogspot.com/-nkEP8FBWpWw/Vnr6ciibedI/AAAAAAAAAOs/zXump0Tuqpc/s1600/Ejemplo%2BOrden%2Bde%2BTrabajo.png')), 
                      
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