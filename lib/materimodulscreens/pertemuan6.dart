import 'package:flutter/material.dart';

class pertemuan6 extends StatefulWidget {
  const pertemuan6({super.key});

  @override
  State<pertemuan6> createState() => _pertemuan6State();
}

class _pertemuan6State extends State<pertemuan6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("pertemuan 6 : Form Screen"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    'images/jepang.jpg',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: 'MASUKKAN Nama',
                ),
                onChanged: (String value) {
                  setState(() {
                    nama = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('Jenis kelamin : '),
                  Radio(
                    value: 'Laki-Laki',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    },
                  ),
                  Text('Laki-Laki'),
                  Radio(
                    value: 'perempuan',
                    groupValue: selectedRadio,
                    onChanged: (value) {
                      setState(() {
                        selectedRadio = value.toString();
                      });
                    },
                  ),
                  Text('perempuan'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('hobi :'),
              CheckboxListTile(
                  title: Text('Olahraga'),
                  value: olahraga,
                  onChanged: (value) {
                    setState(() {
                      olahraga = value!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('seni'),
                  value: olahraga,
                  onChanged: (value) {
                    setState(() {
                      olahraga = value!;
                    });
                  }),
              SizedBox(
                height: 20,
              ),
              SwitchListTile(
                  title: Text('Lulus'),
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  }),
              ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
              )
            ],
          )),
    );
  }
}
