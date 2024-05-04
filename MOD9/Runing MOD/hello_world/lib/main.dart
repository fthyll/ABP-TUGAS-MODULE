import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Widgets Muhammad Fatih Yumna - 1301213389'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Hello, world!',
                  textDirection: TextDirection.ltr,
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  color: Colors.amber[600],
                  width: 48.0,
                  height: 48.0,
                ),
              ),
              GridView.count(
                primary: false,
                padding: EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3, // Adjust the crossAxisCount
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text("He'd have you all unravel at the"),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Heed not the rabble'),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Sound of screams but the'),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Who scream'),
                    color: Colors.teal[400],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Revolution is coming...'),
                    color: Colors.teal[500],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Text('Revolution, they...'),
                    color: Colors.teal[600],
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              ListView(
                padding: EdgeInsets.all(8),
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: Center(child: Text('Entry C')),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              ListView.builder(
                padding: EdgeInsets.all(8),
                itemCount: entries.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                },
              ),
              SizedBox(height: 20.0),
              ListView.separated(
                padding: EdgeInsets.all(8),
                itemCount: entries.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(),
              ),
              SizedBox(height: 20.0),
              Stack(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Positioned(
                    left: 10.0,
                    top: 10.0,
                    child: Container(
                      width: 90,
                      height: 90,
                      color: Colors.green,
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 20.0,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              SizedBox(
                width: 250,
                height: 250,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 250,
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.black.withAlpha(0),
                            Colors.black12,
                            Colors.black45
                          ],
                        ),
                      ),
                      child: Text(
                        'Foreground Text',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];
