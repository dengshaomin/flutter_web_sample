import 'package:flutter/material.dart';

import 'scheme_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var datas = ["scheme拉起app"];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 200,
            color: Colors.white,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return TextButton(
                  onPressed: () => {},
                  child: Text(datas[index]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  color: Colors.grey,
                  height: 1,
                );
              },
              itemCount: datas.length,
            )),
        Flexible(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.all(20),
                child: getRightContent(currentIndex)))
      ],
    );
  }

  Widget getRightContent(int index) {
    Widget widget;
    switch (index) {
      case 0:
        widget = SchemePage();
        break;
      default:
        widget = SchemePage();
    }
    ;
    return widget;
  }
}
