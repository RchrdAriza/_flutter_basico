import "package:flutter/material.dart";

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Page"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            // shape: const StadiumBorder(),
          ),
          onPressed: () => _mostrarAlert(context),
          child: const Text("alerta"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: const Text('Titulo'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Este es el contenido de la caja de la alerta"),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }
}
