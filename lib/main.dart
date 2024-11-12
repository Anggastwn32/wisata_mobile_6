import 'package:flutter/material.dart';
import 'package:wisata_mobile/materimodulscreens/pertemuan6.dart';
import 'package:wisata_mobile/mystatefulwidget.dart';
import 'package:wisata_mobile/mystatelesswidget.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: pertemuan6(),
    );
  }
}
