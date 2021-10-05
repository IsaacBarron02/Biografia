import 'package:flutter/material.dart';
class AvatarPage extends StatelessWidget {
  //const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Acerca de mí'),
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
            title: Text('¿Quién soy yo?'),
            subtitle: Text('Mi nombre es Isaac Marcelino Barron Velazco, soy estudiante de 10º cuatrimestre de la carrera de Desarrollo de Sotware, actualmente estudio y trabajo; en mi empleo(Swoboda) llevo 3 años y 4 meses en donde trabajo como analista de TI'),
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
              'https://instagram.fqro3-1.fna.fbcdn.net/v/t51.2885-19/s320x320/244385420_557999875408044_2928126856483357748_n.jpg?_nc_ht=instagram.fqro3-1.fna.fbcdn.net&_nc_ohc=9ew6KE0kPKkAX_gSMwc&edm=ABfd0MgBAAAA&ccb=7-4&oh=ec4173a3bbd334102c1a463c1d89150e&oe=61640D50&_nc_sid=7bff83'),
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
              child: Text('Mineral el chico, Hidalgo'),
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
            title: Text('Album favorito'),
            subtitle: Text('Mis gustos musicales son muy variados, ya que disfruto de cada tipo de música (a excepcion del K-pop y heavy metal), pero si me diera a escoger acerca de un albúm que no me canse de escuchar, definitivamente sería Hollywoods bleeding de Post Malone '),
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
              'https://images-na.ssl-images-amazon.com/images/I/41etecSUOSL.jpg'),
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
              child: Text('Hollywoods Bleeding - 2019'),
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