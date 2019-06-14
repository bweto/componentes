import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards Screens'),
      ),
      body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
          ],
        ),
    );
  }

  Widget _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
        ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blueAccent),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Esto es un texto largo para ver como se veria la información en un card cunado se utiliza la propiedad subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {

    final card = Container(
      
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://images.hdqwalls.com/wallpapers/bthumb/anime-landscape-waterfall-cloud-5k-mq.jpg'),
            placeholder: AssetImage('assets/loading-15.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            fadeInCurve: Curves.decelerate,
            fit: BoxFit.cover,
            height: 300.0,
          ),
          /* Image(
            image: NetworkImage('https://images.hdqwalls.com/wallpapers/bthumb/anime-landscape-waterfall-cloud-5k-mq.jpg'),
          ), */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Esta es una image muy grande jeje')
          )
        ],
      )
    );

    return Container(
     
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 225, 255, 255),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:Colors.black26,
            blurRadius: 30.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0),
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      )
    );
  }

}