import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({ Key? key }) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;

  bool? _bloquearSlider = false;
  bool _bloaqueSlider2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
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
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            //_crearCheckbox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen()
            ),
          ],
        ),
      ),
    );
  }
  Widget _crearSlider(){
    return Slider(
      value: _valorSlider, 
      label: 'Tamañon de la imagen',
      
      min: 10.0,
      max: 400.0,
      activeColor: Colors.blue.shade700,
      onChanged: (_bloquearSlider == true || _bloaqueSlider2 == true) ?  null:
      (valor){
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }
  Widget _crearImagen(){
    return Image(
      image: NetworkImage ('https://lh3.googleusercontent.com/-R2gmQ27t2ew/X1AfiTHBxfI/AAAAAAAAAA8/ybbgS6TorTwDWFULLU-t1GrQb88vQCNjwCEwYBhgLKtQDABHVOhwwzvxwUrZm5uHDbqdTZCf5jjd9WSEQ1aTthOaixpcMz6d-7tybfA_8zCF5hrIM0Qp6CNlPBJ9XmU8JLNpYAiayPu3BTinFU6StxIdTsDDMNlL7JTZhjCooEy7r83J32FQ8KI749-NEycLN9M7P8KZe1ogSRGvUpvb0pofmDW2DjEW9inOaw53TfHdIqnJwNFqhZCK091srW78mexzQstj4YbXXpAN_6NmJMgafZDC0cfrmJKmiokvG5yrIQFav0_Mpt4TYJLsNNkkIHKSze-ngrmzxrw6rzDulDJ8pPvvDPAZrXbS75X1vU_c_obaXvayUMSRB-QD0dRRne5iLanVAdTguBMWNJqaqRepGWzgv2FIu3kXDS6siOW_wbqTHFDVqrKRHeqWUKmz9kcAy2ikgGzh5iWtvg1hvyLMoK5a_s0YAZ9EZaCEQK_tTEUy0iry9SZz7w-k7m5TrUQ4U-47W31HKM5XJ49gq_Fuz6wRQESA3XYcRnCNhad4TSajBHkH0UEYwYy2pnKnv5wkTMYOwNj7t3p7NttagrSjI0YMYpd0IYIhbM3MaSfZVdKX9dkf-cyIQjaRyzHeiUJGLZgcBLIG2W-JKK7vxoM9cegkqMNXe8ooG/w278-h280-p/IMG_20190531_210125.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
      );
  }
  /*Widget _crearCheckbox(){
    /*return  Checkbox(
      value: _bloquearSlider,
      onChanged: (valor){
        setState(() {
          _bloquearSlider = valor;
        });
      },
      );*/
      return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _bloquearSlider,
        onChanged: (valor){
          setState(() {
            _bloquearSlider = valor;
          });
        },
      );
  }*/

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Guardar Imagen', style: TextStyle(color: Colors.white)),
      value: _bloaqueSlider2,
      onChanged: (valor){
        setState(() {
          _bloaqueSlider2 = valor;
        });
      },
      );
  }
}