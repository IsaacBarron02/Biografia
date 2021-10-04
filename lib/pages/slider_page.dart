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
      image: NetworkImage ('http://assets.stickpng.com/images/580b57fbd9996e24bc43bd2f.png'),
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