import 'package:flutter/material.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webview2 extends StatefulWidget {
  const webview2({Key? key}) : super(key: key);

  @override
  State<webview2> createState() => _webviewState();
}

class _webviewState extends State<webview2> {
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
          // drawer: ClipRRect(
          //   borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(60.0),
          //       bottomRight: Radius.circular(60.0)),
          //   child: Drawer(
          //       child: drawer(),
          //       backgroundColor: Color.fromARGB(255, 249, 188, 179)),
          // ),
          // appBar: AppBar(
          //   backgroundColor: Color.fromARGB(255, 249, 188, 179),
          //   actions: [
          //     IconButton(
          //         onPressed: () {
          //           Get.to(webview2());
          //         },
          //         icon: Icon(Icons.home))
          //   ],
          //   title: Text(
          //     "View participating returant",
          //     style: TextStyle(fontSize: 15),
          //   ),
          // ),
          body: IndexedStack(index: position, children: <Widget>[
        WebView(
          initialUrl: "https://rajnity.com/",
          javascriptMode: JavascriptMode.unrestricted,
          key: key,
          onPageFinished: doneLoading,
          onPageStarted: startLoading,
        ),
        Container(
          color: Colors.blue[900],
          child: Center(child: CircularProgressIndicator(color: Colors.white)),
        ),
      ])),
    );
  }
}
