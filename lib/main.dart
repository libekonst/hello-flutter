import 'package:flutter/material.dart';
import 'package:hello_world/category_route.dart';

void main() => runApp(UnitConverterApp());

class UnitConverterApp extends StatelessWidget {
  void showAlert(String name) {
    // return AlertDialog(title: Text('Hello from alert!'));
    print('hello ${name.length > 3 ? name : 'mate'} from flutter!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello flutter!',
      home: CategoryRoute(),
    );



    // home: Scaffold(
    //     appBar: AppBar(title: Center(child: Text('Hello Flutter!'))),
    //     backgroundColor: Color.fromARGB(220, 5, 130, 95),
    //     body: Center(
    //         child: ActionChip(
    //       label: Text('The label of lols'),
    //       onPressed: () => showAlert('Ko'),
    //     ))));
  }
}
