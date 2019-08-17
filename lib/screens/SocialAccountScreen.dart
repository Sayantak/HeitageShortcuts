import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class SocialAccountScreen extends StatefulWidget {
  final String url;

  SocialAccountScreen({@required this.url});
  @override
  _SocialAccountScreenState createState() => _SocialAccountScreenState();
}

class _SocialAccountScreenState extends State<SocialAccountScreen> {
  FlutterWebviewPlugin flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  void dispose() {
    flutterWebViewPlugin.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.url);
    return SafeArea(
      child: WebviewScaffold(
        url: "${widget.url}",
        hidden: true,
      ),
    );
  }
}
