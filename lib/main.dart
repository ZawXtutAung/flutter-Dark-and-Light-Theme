import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
              onChanged: (_value) {
                setState(() {
                  _switch = _value;
                });
              },
              value: _switch,
            )
          ],
          title: Text('Dark and Light'),
        ),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Icon(
            Icons.lightbulb_outline,
            size: 60,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
