import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_switch_example/provider.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            const Text('Light', style: TextStyle(fontSize: 20,),),
            Switch(
              value: Provider.of<MyProvider>(context).switchValue,
              onChanged:  Provider.of<MyProvider>(context).changeMode,
            ),
            const Text('Dark', style: TextStyle(fontSize: 20,),),

          ],
        ),
      ),
    );

  }
}
