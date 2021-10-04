import 'package:flutter/material.dart';
class FormsPage extends StatefulWidget {
  const FormsPage({ Key? key }) : super(key: key);

  @override
  _FormsPageState createState() => _FormsPageState();

}

class _FormsPageState extends State<FormsPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha ='';
  List<String> _municipios = [
    'Amealco',
    'Tequisquiapan',
    'San Juan del Rio',
    'Pedro Escobedo',
    'Colon',
    'Pinal de Amoles',
    'Queretaro',
    'Ezequiel Montes'
  ];
  String _municipioSeleccionado ='';
  TextEditingController _fechaController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formularios'),
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
       backgroundColor: Colors.grey.shade300,
       body: ListView(padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
       children: <Widget>[
         _crearNombre(),
         Divider(),
         _crearEmail(),
         Divider(),
         _crearPassword(),
         Divider(),
         _crearFecha(context),
         Divider(),
         _crearDropdown(),
         Divider(),
         _mostrarInformacion(),
       ],
       ),
    );
  }
  Widget _crearNombre(){
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
          ),
          counter: Text('Número de letras ${_nombre.length}'),
          labelText: 'Nombre: ',
          hintText: 'Escribe tu nombre...',
          helperText: 'Nombre sin apellido',
          icon: Icon(Icons.account_circle),
          suffixIcon: Icon(Icons.accessibility),
          ),
        onChanged: (valor){
          setState(() {
            _nombre = valor;
          });
          
          //print(_nombre);
        },
    );
  }
  Widget _crearEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
          ),
          
          labelText: 'E-Mail: ',
          hintText: 'Escribe tu correo...',
          icon: Icon(Icons.email),
          suffixIcon: Icon(Icons.alternate_email),
          ),
        onChanged: (valor){
          setState(() {
            _email = valor;
          });
          
          //print(_nombre);
        },
    );
  }

  Widget _crearPassword(){
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
          ),
          
          labelText: 'Password ',
          hintText: 'Escribe tu contraseña...',
          helperText: 'Debe contener 8 caracteres minimo',
          icon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.lock_outline),
          ),
        onChanged: (valor){
          setState(() {
            _password = valor;
          });
        },
    );
  }
  Widget _crearFecha(BuildContext context){
    return TextField(
      enableInteractiveSelection: false,
      controller: _fechaController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0)
          ),
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento',
          icon: Icon(Icons.calendar_today),
          suffixIcon: Icon(Icons.perm_contact_calendar),
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async{
    DateTime? fechaSeleccionada = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(1910), 
      lastDate: new DateTime(2025),
      locale: Locale('es','ES'),
      );
      if (fechaSeleccionada != null){
        setState(() {
          _fecha = fechaSeleccionada.toString();
          //print(_fecha);
          _fechaController.text = _fecha;
        });
      }
  }

  Widget _mostrarInformacion(){
    return ListTile(
      title: Text('El nombre es: $_nombre'),
      subtitle: Text('E-Mail $_email'),
      trailing: Text(_municipioSeleccionado),
    );
  }

  //método que retorna la lista de municpios como elementos de menú
  List<DropdownMenuItem<String>> getItems(){

    //variable de retorno
    List<DropdownMenuItem<String>> municipios = [];

    //recorremos la lista de _municipios con un ciclo y extraemos cada uno y
    //lo agregamos en la lista de items
    _municipios.forEach((municipio) {
      municipios.add(DropdownMenuItem(
        child: Text(municipio),
        value: municipio,
      ));
     });
     return municipios;
  }

  Widget _crearDropdown(){
    return Row(
      children: <Widget>[
        Text('Municipio: '),
        SizedBox(width: 30.0,),
        DropdownButton(
          items: getItems(),
          onChanged: (municipio){
            setState(() {
              _municipioSeleccionado = municipio.toString();
            });
          },
        ),
      ],
    );
  }
}