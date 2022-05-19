import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.uri}) : super(key: key);

  final String uri;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: uri,
      ),
    );
  }
}
