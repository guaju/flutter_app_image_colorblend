import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  var colorBlendMode=[
    'BlendMode.clear',
    'BlendMode.src',
    'BlendMode.dst',
    'BlendMode.srcOver',
    'BlendMode.dstOver',
    'BlendMode.srcIn',
    'BlendMode.dstIn',
    'BlendMode.srcOut',
    'BlendMode.dstOut',
    'BlendMode.srcATop',
    'BlendMode.dstATop',
    'BlendMode.xor',
    'BlendMode.plus',
    'BlendMode.modulate',
    'BlendMode.screen',
    'BlendMode.overlay',
    'BlendMode.darken',
    'BlendMode.lighten',
    'BlendMode.colorDodge',
    'BlendMode.colorBurn',
    'BlendMode.hardLight',
    'BlendMode.softLight',
    'BlendMode.difference',
    'BlendMode.exclusion',
    'BlendMode.multiply',
    'BlendMode.hue',
    'BlendMode.saturation',
    'BlendMode.color',
    'BlendMode.luminosity',
  ];
  var colorBlendModeArray=[
    BlendMode.clear,
    BlendMode.src,
    BlendMode.dst,
    BlendMode.srcOver,
    BlendMode.dstOver,
    BlendMode.srcIn,
    BlendMode.dstIn,
    BlendMode.srcOut,
    BlendMode.dstOut,
    BlendMode.srcATop,
    BlendMode.dstATop,
    BlendMode.xor,
    BlendMode.plus,
    BlendMode.modulate,
    BlendMode.screen,
    BlendMode.overlay,
    BlendMode.darken,
    BlendMode.lighten,
    BlendMode.colorDodge,
    BlendMode.colorBurn,
    BlendMode.hardLight,
    BlendMode.softLight,
    BlendMode.difference,
    BlendMode.exclusion,
    BlendMode.multiply,
    BlendMode.hue,
    BlendMode.saturation,
    BlendMode.color,
    BlendMode.luminosity,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
         _blendModeListView()
    );
  }

  Widget _blendModeListView() {
    var listview=ListView.builder(
        itemCount: colorBlendMode.length,
        itemExtent: 60,
        padding: EdgeInsets.all(10.0),
        itemBuilder: (BuildContext context,int index){
        return new FlatButton(
            onPressed: ()=>_look(index),
            child: Card(
              child: Center(
                child: Text(colorBlendMode[index]),
              ),
            ));

    });
    return listview;
  }

 void _look(int index) {
   Navigator.of(context).push(
     new MaterialPageRoute<void>(   // Add 20 lines from here...
       builder: (BuildContext context) {
           return Scaffold(
              appBar: AppBar(
                title: Text(colorBlendMode[index]),
              ),
              body: Center(
                child: Image(
                    image: AssetImage('images/jay.png'),
                    colorBlendMode: colorBlendModeArray[index],
                    color: Colors.red
                ),
              ),
            );
       },
     ),                           // ... to here.
   );

 }
}
