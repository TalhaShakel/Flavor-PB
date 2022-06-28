// ignore_for_file: prefer_const_constructors

import 'package:fine_resturant/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class webview extends StatefulWidget {
  const webview({Key? key}) : super(key: key);

  @override
  State<webview> createState() => _webviewState();
}

class _webviewState extends State<webview> {
  int position = 1;

  final key = UniqueKey();
  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A) {
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: ClipRRect(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(60.0),
                bottomRight: Radius.circular(60.0)),
            child: Drawer(child: drawer(), backgroundColor: coolor),
          ),
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 249, 188, 179),
            actions: [
              IconButton(
                  onPressed: () {
                    Get.to(webview());
                  },
                  icon: Icon(Icons.home))
            ],
            title: Text(
              "View participating restaurant",
              style: TextStyle(fontSize: 14),
            ),
          ),
          body: IndexedStack(index: position, children: <Widget>[
            WebView(
              initialUrl:
                  "https://www.google.com/maps/d/embed?mid=1pDkYIbQncl6JY1A4nXjl-_KwRpz2AjI&ehbc=2E312F&ll=26.6837555568389%2C-80.18980951524946&z=9",
              javascriptMode: JavascriptMode.unrestricted,
              key: key,
              onPageFinished: doneLoading,
              onPageStarted: startLoading,
            ),
            Container(
              color: Colors.blue[900],
              child:
                  Center(child: CircularProgressIndicator(color: Colors.white)),
            ),
          ])),
    );
  }
}
