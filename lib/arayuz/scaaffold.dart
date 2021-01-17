import 'package:flutter/material.dart';

class ScaffoldOgesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: new AppBar(
        title: Text("Başlık"),
        actions: [
          IconButton(
            icon: Icon(Icons.widgets_rounded),
            tooltip: "Değişen Widgetler",
            onPressed: () => Navigator.pushNamed(context, "/degisenwidget"),
          ),
          IconButton(
            icon: Icon(Icons.aspect_ratio_rounded),
            tooltip: "ilk ders",
            onPressed: () => Navigator.pushNamed(context, "/ilkders"),
          ),
          IconButton(
            icon: Icon(Icons.download_rounded),
            tooltip: "üçüncü buton",
            onPressed: () => print("üçüncü buton"),
          ),
        ],
      ),
      body: new Center(
        child: new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/ilkders"),
              child: new Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://htmlcssdersleriogreniyorum.com/img/dersler/html-resim-ekleme(add-a-image).png"),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.all(5),
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    color: Color(0xaceedddd),
                    child: Text(
                      "Tek tıklama\nilk derse git",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ), //Text("Tek tıklama\nilk derse git"),
              ),
            ),
            GestureDetector(
              onDoubleTap: () => Navigator.pushNamed(context, "/degisenwidget"),
              child: new Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text("Çift tıklama\nDeğişebilen widget sayfasına git"),
                alignment: Alignment.center,
              ),
            ),
            GestureDetector(
              onLongPress: () => print("Uzun basıldı..."),
              child: new Container(
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text("Uzun basma\nconsol mesaj :)"),
                alignment: Alignment.center,
              ),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
              alignment: Alignment.center,
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
              alignment: Alignment.center,
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
              alignment: Alignment.center,
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
              alignment: Alignment.center,
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
              alignment: Alignment.center,
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
            new Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Grid elemanı"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.access_alarm),
            label: "Arşiv",
          ),
          new BottomNavigationBarItem(
            icon: new Icon(Icons.baby_changing_station_rounded),
            label: "Kısayol",
          ),
        ],
        onTap: (int i) {
          switch (i) {
            case 0:
              print("arşiv buton...");
              break;
            case 1:
              print("kısayol buton...");
              break;
          }
        }, // debugPrint("Tıklanan:$i")
      ),
      drawer: new Drawer(
        child: ListTile(
          title: Text("Geri Dön"),
          leading: Icon(Icons.change_history),
          onTap: () {
            Navigator.pop(context);
            debugPrint("Yan menüye tıkladınız");
          },
        ),
      ),
    );
  }
}
