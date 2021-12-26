import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen(this.urlPage, {Key? key}) : super(key: key);

  final String urlPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Webview"),
      ),
      body: WebView(
        initialUrl: urlPage,
      ),
    );
  }
}
