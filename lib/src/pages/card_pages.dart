import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
	_cardTipo1(), 
	const SizedBox(height: 30.0), 
	_cardTipo2(),
	const SizedBox(height: 30.0), 
	_cardTipo1(), 
	const SizedBox(height: 30.0), 
	_cardTipo2(),
	const SizedBox(height: 30.0), 
	_cardTipo1(), 
	const SizedBox(height: 30.0), 
	_cardTipo2()
	],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Soy el titulo de esta tarjeta"),
            subtitle: Text(
                "Esta es la descripcion de la tarjeta que estoy a punto de utilizar"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: const Text("Cancelar"),
                onPressed: () {},
              ),
              TextButton(
                child: const Text("Ok"),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage("assets/jar-loading.gif"),
            image: NetworkImage(
                "https://media.macphun.com/img/uploads/macphun/blog/2063/_1.jpeg?q=75&w=1710&h=906&resize=cover"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text("No tengo idea de lo que estoy haciendo"))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
	  color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]
          // color: Colors.red,

          ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: card,
      ),
    );
  }
}
