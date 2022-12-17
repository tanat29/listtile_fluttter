import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile Demo'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              child: const ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                tileColor: Colors.indigo,
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: Icon(Icons.light),
                title: Text('List Tile 1'),
                subtitle: Text('This is a subtitle'),
              ),
            ),
            Divider(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                tileColor: Colors.green,
                textColor: Colors.white,
                iconColor: Colors.white,
                leading: const Icon(Icons.access_time),
                title: Text('List Tile 2'),
                subtitle: Text('This is a subtitle'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
