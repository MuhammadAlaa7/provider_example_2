import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_switch_example/provider.dart';

import 'drawer.dart';
import 'home.dart';

void main(){
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return

      ChangeNotifierProvider<MyProvider >(
             create: (_) => MyProvider(),
             child: const HomePage(),

      // just to make the provider the parent widget at all so that all widget can listen to it

    );
  }
}









//////////////////////////// this is the normal way of handling the state  \\\\\\\\\\\\\\\
// this way is through the setState and passing the data through the constructor
/*


class HomePage extends StatefulWidget {
  ThemeMode tm = ThemeMode.light   ;
  bool swVal = false;



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void changeMode(bool value )
  {
    setState(() {
      widget.swVal = value;

      if(widget.swVal == false )
      {

        widget.tm  = ThemeMode.light;

        print(widget.swVal);
        print(widget.tm);
      }
      else
      {
        print(widget.swVal);

        widget.tm = ThemeMode.dark;
        print(widget.tm);


      }
    });


  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: widget.tm,
      theme: ThemeData(

      ),
      darkTheme:ThemeData(
         primarySwatch: Colors.green,

         scaffoldBackgroundColor: Colors.black,

      ),
      home: Scaffold(
        appBar: AppBar(),
        body: null,
        drawer: MyDrawer(changeMode , widget.swVal),
      ),
    );


  }
}

*/
