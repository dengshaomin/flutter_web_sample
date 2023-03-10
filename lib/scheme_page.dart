import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SchemePage extends StatelessWidget {
  SchemePage({Key? key}) : super(key: key);
  final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextField(
          controller: _textController,
          decoration: const InputDecoration(
            hintText: "scheme://host/path?id=xx",
            border: OutlineInputBorder(),
            labelText: 'Input Scheme',
          ),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: TextButton(onPressed: _openApp, child: const Text("打开app")),
        )
      ],
    ));
  }

  void _openApp() {
    var result =
        launchUrl(Uri.parse("niopower://peservice/sourcebook?id=12345"));
  }
}
