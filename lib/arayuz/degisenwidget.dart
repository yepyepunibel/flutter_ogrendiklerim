import 'package:flutter/material.dart';

class DegisenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Stateless - Stateful Farkı"),
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPageState();
}

class MyPageState extends State<HomePage> {
  int degisensayi = 0;
  void sayiyiarttir() {
    setState(() {
      degisensayi++;
    });
  }

  void sayiyiAzalt() {
    setState(() {
      degisensayi--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            child: Text("sayıyı arttır"),
            onPressed: sayiyiarttir,
          ),
          Text(
            "Değişebilen sayı:$degisensayi",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: degisensayi > 0 ? Colors.red : Colors.blue,
              fontSize: 20,
            ),
          ),
          FlatButton(
            child: Text("sayıyı azalt"),
            onPressed: sayiyiAzalt,
          )
        ],
      ),
    );
  }
}
