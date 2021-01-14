import 'package:flutter/material.dart';

class IlkdersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İlk Sayfa"),
      ),
      body: Container(
        color: Colors.green,
        child: Wrap(
            spacing: 0, // gap between adjacent chips
            runSpacing: 0, // gap between lines
            direction: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.yellow,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RowBir(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RowBir(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [RowBir()],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Row(
                              children: [RowBir()],
                            ),
                            Row(
                              children: [RowBir()],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

class RowBir extends StatelessWidget {
  const RowBir({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                  color: Colors.red,
                  child: Text("Sonraki sayfa"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Main2Page()));
                  }),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      child: Text("2-Sonraki sayfa"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Main2Page()));
                      }),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class Main2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("route page2"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("Geri sayfa"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
