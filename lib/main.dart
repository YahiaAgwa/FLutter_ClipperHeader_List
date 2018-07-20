import 'package:flutter/material.dart';
import './Tasks.dart';
import './design.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BriefCode',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Task> tasks = new TasksFunctions().getList();
  DesignFunctions design = new DesignFunctions();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          DesignFunctions().buildImage(),
          DesignFunctions().buildHeader(),
          DesignFunctions().buildProfileRow(),
          DesignFunctions().buildBottomPart()
        ],
      )
    );
  }
}