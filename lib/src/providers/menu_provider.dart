import "package:flutter/services.dart" show rootBundle;
import 'dart:convert';


class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString("data/menu-opts.json");
    Map<String, dynamic> dataMap = json.decode(resp);
    // print(dataMap["rutas"]);
    opciones = dataMap["rutas"];
    return opciones;
  }
}


final menuProvider = _MenuProvider();
