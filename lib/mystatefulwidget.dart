import 'package:flutter/material.dart';

class Mystatefulwidget extends StatefulWidget {
  const Mystatefulwidget({super.key});

  @override
  State<StatefulWidget> createState() => _MystatefulWidgetState();
}

class _MystatefulWidgetState extends State<Mystatefulwidget> {
  var _hitungan = 0;

  void _tambahAngka() {
    setState(() {
      _hitungan++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'program Stateful Widget',
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$_hitungan'),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              _tambahAngka();
            },
            child: Text('berapa nilai'),
          )
        ],
      ),
    );
  }
}
