import 'package:flutter/material.dart';
class AvatarPage extends StatelessWidget {
  //const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Perfil'),
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
      body: ListView(
      padding: EdgeInsets.all(10.0),
      children: <Widget>[
        _cardTipo1(),
        SizedBox(
          height: 30.0,
          ),
        _cardTipo2(),
        SizedBox(
          height: 30.0,
          ),
        _cardTipo3(),
        SizedBox(
          height: 30.0,
          ),
        _cardTipo4(),
        SizedBox(
          height: 30.0,
          ),
        ],
      ),
    );
  }
  Widget _cardTipo1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
        ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album_rounded, color: Colors.blue,),
            title: Text('Convivio 16 de septiembre'),
            subtitle: Text('El pasado 16 de septiembre se realizó el ya conmemorativo convivio mexicano, en el cual se dio de comer a los empleados distintos antojitos mexicanos como: enchiladas queretaranas, gorditas, flautas, pambazos, etc. En el convio se contó con las debidas restricciones por pandemia por lo que se..'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Continuar Leyendo...'),
                onPressed: (){},
                ),
              
            ],
          ),
        ],
        ),
    );
  }
  Widget _cardTipo2(){
    final  card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
              'https://www.revistanuve.com/wp-content/uploads/2017/09/VivaMexico-1.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            ),
          /*Image(
              image: NetworkImage(
              'https://estaticos.muyinteresante.es/uploads/images/gallery/5fdf8d4b5bafe88b1eba2d65/1-paisaje-suizo.jpg')
            ), */
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Grito de independencia'),
            ),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),
            ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: card,
      ),
    );
  }
  Widget _cardTipo3(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
        ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album_rounded, color: Colors.blue,),
            title: Text('Auditoría Bosch'),
            subtitle: Text('Durante la semana 38 se tuvo la visita de nuestro cliente Bosch, el cual vino a ver los procesos de LVS y SPS esto con la con la finalidad de ver como se estaban corrigiendo los recientes defectos en el sensor para Rivian. Durante la auditoría el cliente nos felicitó pues hemos podido dar una solición pronta y cumpliendo con los estándares de calidad..'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Continuar Leyendo...'),
                onPressed: (){},
                ),
              
            ],
          ),
        ],
        ),
    );
  }
  Widget _cardTipo4(){
    final  card = Container(
      child: Column(
        children: <Widget>[
          const FadeInImage(
            image: NetworkImage(
              'https://www.ambientum.com/wp-content/uploads/2019/05/bosch-logo-696x359.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            ),
          /*Image(
              image: NetworkImage(
              'https://estaticos.muyinteresante.es/uploads/images/gallery/5fdf8d4b5bafe88b1eba2d65/1-paisaje-suizo.jpg')
            ), */
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Robert Bosch México'),
            ),
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),
            ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: card,
      ),
    );
  }
}