import 'package:flutter/material.dart';

class mystatelesswidget extends StatelessWidget {
  const mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program stateless Widget',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('ini Adalah Stateless Widget'),
        ),
        body: const Center(
          child: Text('ini halaman Utama'),
        ),
      ),
    );
  }
}
