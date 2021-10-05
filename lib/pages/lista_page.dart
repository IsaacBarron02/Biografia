import 'dart:async';

import 'package:flutter/material.dart';
class ListaPage extends StatefulWidget {
  const ListaPage({ Key? key }) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  List<int> _ListaNumeros = [];

  int _ultimoItem = 0;

  bool _isloading = false;

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    
    _agregar10();

    _scrollController.addListener(() {
      //print('Scrolling');
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        //_agregar10();
        _obtenerData();
      }
    });
  }

  @override
  void dispose(){
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de imagenes'),
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
        body: 
        Stack(
          children: <Widget>[
            _crearLista(),
            _crearLoading()
          ],
        ),
        //_crearLista(),
        
    );
  }
  Widget _crearLista(){
    return ListView.builder(
      controller: _scrollController,
      itemCount: _ListaNumeros.length,
      itemBuilder: (BuildContext context, int index){
        final indice = _ListaNumeros[index];
        return FadeInImage(
          image: NetworkImage('https://random.imagecdn.app/500/300?image=$indice'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          );
      });
  }

  void _agregar10(){
    for(var i=1; i<=10; i++){
      _ultimoItem++;
      _ListaNumeros.add(_ultimoItem);
    }
    setState(() {
      
    });
  }

  Future<Timer> _obtenerData() async{
    _isloading = true;
    setState(() {
      
    });
    final duration = new Duration(seconds: 2);
    return new Timer(duration, respuestaHTTP);
  }
  void respuestaHTTP(){
    _isloading = false;
    _agregar10();
  }
  Widget _crearLoading(){
    if (_isloading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0,
          ),
        ],
      );
    }else{
      return Container();
    }
  }
}