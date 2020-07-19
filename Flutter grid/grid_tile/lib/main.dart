import 'package:flutter/material.dart';
import 'ui/grid.dart';

void main() {
  var title = "GridView";
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Grid(title: title),
    ),
  );
}
