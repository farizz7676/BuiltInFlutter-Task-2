import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {},
          color: Colors.white
        ),
        elevation: 0,
        backgroundColor: Colors.cyan[700],
      ),
      body: Container(
        height: 700,
        width: double.infinity,
        padding: EdgeInsets.all(22),
        color: Colors.cyan[700],
        child: Column(
          children: [
             Align(
                child: Text(
                  'Profile',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.w700,color:Colors.white),
                  ),
                  
                ),
                alignment: Alignment.centerLeft),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/og1.jpg'),
              radius: 70,
            ),
            Spacer(),
            Row(
              children: [
                
                Text('Username',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                Spacer(),
                Text('Muhammed Fariz KP',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 2,
            ),
            Spacer(),
            Row(
              children: [
                Text('Email ID',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                Spacer(),
                Text('farizz7676@gmail.com',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 2,
            ),
            Spacer(),
            Row(
              children: [
                Text('Phone No.',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                Spacer(),
                Text('+91 9898989898',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 2,
            ),
            Spacer(),
            Row(
              children: [
                Text('Date Of Birth',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                Spacer(),
                Text('01/01/2001',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 2,
            ),
            Spacer(),
            Row(
              children: [
                Text('Address',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                Spacer(),
                Text('Malappuram,Kerala,India',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              ],
            ),
            Spacer(),
            Divider(
              color: Colors.black12,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
