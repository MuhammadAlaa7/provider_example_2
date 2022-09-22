import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_switch_example/drawer.dart';
import 'package:provider_switch_example/provider.dart';

class HomePage extends StatelessWidget { 
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( primarySwatch: Colors.pink,),
      darkTheme: ThemeData( primarySwatch: Colors.green,),
      themeMode: Provider.of<MyProvider>(context).tm,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Home Page '),),
        body: null,
        drawer: const MyDrawer(),
      ),
    );
  }
}
