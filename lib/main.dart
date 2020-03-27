import 'package:flutter/material.dart';
import 'package:flutter_rtmp_publisher/flutter_rtmp_publisher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter RTMP Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter RTMP Demo'),
      ),
      body: Container(
        child: RaisedButton(
          child: Text("Start Stream"),
          onPressed: () {
            RTMPPublisher.streamVideo("rtmps://live-api-s.facebook.com:443/rtmp/3180891981941565?s_bl=1&s_sc=3180892031941560&s_sw=0&s_vt=api-s&a=AbxArulhcjxiXGM-");
          },
        ),
      ),
    );
  }
}