import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Toolbar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: "Back",
          onPressed: () {
            debugPrint("Back icon clicked");
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(widget.title),
        actions: [
          IconButton(
            tooltip: "Alarm",
            onPressed: () {
              debugPrint("1st action clicked");
            },
            icon: const Icon(Icons.access_alarm),
          ),
          IconButton(
            tooltip: "Profile",
            onPressed: () {
              debugPrint("2nd action clicked");
            },
            icon: const Icon(Icons.account_circle),
          ),
          IconButton(
            tooltip: "Bluetooth",
            onPressed: () {
              debugPrint("3rd action clicked");
            },
            icon: const Icon(Icons.bluetooth),
          ),
          IconButton(
            tooltip: "Balance",
            onPressed: () {
              debugPrint("4th action clicked");
            },
            icon: const Icon(Icons.account_balance_rounded),
          ),
        ],
      ),
      body: const Center(
        child: Text("Hello World!"),
      ),
    );
  }
}
