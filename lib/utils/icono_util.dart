import 'package:flutter/material.dart';

final _icons = <String,IconData>{
  'add_alert': Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'input' : Icons.input,
  'tune' : Icons.tune,
  'list' : Icons.list,
};

//metodo que retorna un icono como tal
Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.blue,
  );
}

