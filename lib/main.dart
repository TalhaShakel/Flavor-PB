import 'dart:async';

import 'package:fine_resturant/page.dart';
import 'package:fine_resturant/page2.dart';
import 'package:flutter/material.dart';
// import 'package:google_maps_widget/google_maps_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch: Color.fromARGB(255, 249, 188, 179),
          ),
      home: splash(),
    );
  }
}

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => webview()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // height: size.height,
      // width: size.width,
      child: Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.contain,
        // height: size.height,
        // width: size.width,
      ),
    );
  }
}

// class googlemap extends StatelessWidget {
//   const googlemap({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             height: 500,
//             child: GoogleMapsWidget(
//               sourceMarkerIconInfo: MarkerIconInfo(
//                 assetPath: "assets/images/house-marker-icon.png",
//               ),
//               destinationMarkerIconInfo: MarkerIconInfo(
//                 assetPath: "assets/images/restaurant-marker-icon.png",
//               ),
//               driverMarkerIconInfo: MarkerIconInfo(
//                 assetPath: "assets/images/driver-marker-icon.png",
//                 assetMarkerSize: Size.square(125),
//                 rotation: 15.0,

//                 // ... and more
//               ),
//               apiKey: 'AIzaSyDnDczEoeUwf7bN5b_-223uvrecPVfzggE',
//               destinationLatLng: LatLng(40.48017307700204, -3.3618026599287987),
//               sourceLatLng: LatLng(40.484000837597925, -3.369978368282318),
//             ),
//           ),
//           // Container(
//           //   child: Image.asset("assets/images/restaurant-marker-icon.png"),
//           // )
//         ],
//       ),
//     );
//   }
// }
