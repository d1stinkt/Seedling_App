import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; //gives map
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart'; //markers?
import 'package:latlong/latlong.dart'; //gives coordinates

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seedling App',
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

        primaryColor: Colors.indigo[900],
        accentColor: Colors.indigo[900],
        backgroundColor: Colors.indigo[900],
      ),
      home: MyHomePage(title: 'Seedling App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // This call to setState tells the Flutter framework that something has
  // changed in this State, which causes it to rerun the build method below
  // so that the display can reflect the updated values. If we changed
  // _counter without calling setState(), then the build method would not be
  // called again, and so nothing would appear to happen.

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.

            title: Text(widget.title),
            actions: [
              //this is a questionmark...
              PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                  PopupMenuItem(
                    child: ListTile(
                        leading: Icon(Icons.account_circle_outlined),
                        title: Text('Account')),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.star_outline_rounded),
                      title: Text('Favorites'),
                      onTap: () {
                        print(
                            'This bitch empty!'); //only prints in terminal... sadge
                      },
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.settings_rounded),
                      title: Text('Settings'),
                      onTap: () {
                        //navigate to settings
                      },
                    ),
                  ),
                  PopupMenuDivider(),
                  PopupMenuItem(
                    child: ListTile(
                      leading: Icon(Icons.help_rounded),
                      title: Text('Plz Help'),
                      onTap: () {
                        //navigate to halp
                      },
                    ),
                  ),
                ],
              ),
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.

              // This trailing comma makes auto-formatting nicer for build methods.
            ]),
        body: new FlutterMap(
          //I think this makes the map go to the background
          options: new MapOptions(
              plugins: [
                MarkerClusterPlugin(),
              ], //don't know how to use this
              center: LatLng(60.45, 22.26),
              zoom: 12), //fix zoom later if not good
          //a note on the zooming... If you zoom too much the screen goes gray
          layers: [
            new TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
          ],
        ));
  }
}
