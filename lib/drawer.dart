import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color coolor = Color.fromARGB(255, 255, 237, 233);

class drawer extends StatelessWidget {
  drawer({Key? key}) : super(key: key);

  void _launchUrl(_url) async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 237, 233),
      body: Column(
        children: [
          Image.asset(
            "assets/images/irmedia.png",
            width: 250,
          ),
          Padding(
            padding: EdgeInsets.only(left: size.height * 0.07, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  "Rate Us",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.height * 0.07),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      final Uri _url = Uri.parse(
                          'https://web.facebook.com/FlavorPalmBeach/?_rdc=1&_rdr');
                      _launchUrl(_url);
                    },
                    icon: Image.asset('assets/images/fac.png')),
                IconButton(
                    onPressed: () {
                      final Uri _url = Uri.parse(
                          'https://www.instagram.com/flavorpalmbeach/?igshid=YmMyMTA2M2Y=');
                      _launchUrl(_url);
                    },
                    icon: Image.asset('assets/images/ins.png')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.32),
            child: Column(
              children: [
                Container(
                    height: 30,
                    color: Colors.white,
                    child: Center(child: Text("Presented by"))),
                Image.asset(
                  'assets/images/Cheney-brothers-logo-300x95.png',
                  // height: 300,
                  width: 150,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
