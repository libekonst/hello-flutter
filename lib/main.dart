import 'package:flutter/material.dart';
import 'package:hello_flutter/category_route.dart';

void main() => runApp(UnitConverterApp());

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter!',
      home: CategoryRoute(),
      // home: Scaffold(
      //     appBar: AppBar(title: Center(child: Text('Hello Flutter!'))),
      //     backgroundColor: Color.fromARGB(220, 5, 130, 95),
      //     body: Center(
      //         child: ActionChip(
      //       label: Text('The label of lols'),
      //       onPressed: () => showAlert('Ko'),
      //     ))));
    );
  }
}
