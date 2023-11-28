import "package:flutter/material.dart";
import "../providers/menu_provider.dart";
import "package:componentes/src/utils/iconos_string.util.dart";
// import "package:componentes/src/pages/alert_page.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // print(menuProvider.opciones);
    /* menuProvider.cargarData().then( (opciones) {

    print('_lista');
    print(opciones);
    }); */
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems( snapshot.data, context ),
        );
      },
    );

//     return ListView(
//     children: _listaItems(),
// );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    // if ( data == null ) { return [];}

    data.forEach((opt) { 
      final widgetTemp = ListTile(
        title: Text( opt['texto'] ),
        leading: getIcon( opt['icon'] ),
        trailing: const Icon( Icons.keyboard_arrow_right, color: Colors.red ),
        onTap: (){
         // final route = MaterialPageRoute(
         //  builder: (context) => const AlertPage()
         // );
         // Navigator.push(context, route); 
         Navigator.pushNamed(context, opt["ruta"]);
        },
      );
      opciones..add( widgetTemp )
              ..add(const Divider());

    });
    return opciones;
  }
}
