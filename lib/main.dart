import 'package:flutter/material.dart';
import 'package:tourtest/web_view_container.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => WebViewExample(),
          '/webViewContainer': (context) => WebViewContainer()
        },
      ),
);

class WebViewExample extends StatefulWidget {
  const WebViewExample({super.key});

  @override
  State<WebViewExample> createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Center(
      child: ElevatedButton(onPressed: () {
        Navigator.of(context).pushNamed('/webViewContainer');
      }, child: Text("Open Tour")),
    );
  }
}
