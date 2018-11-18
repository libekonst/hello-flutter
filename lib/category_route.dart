import 'package:flutter/material.dart';
import 'package:hello_flutter/unit.dart';
import './category.dart';

final _backgroundColor = Colors.teal[100];

// This is the home screen.
class CategoryRoute extends StatefulWidget {
  const CategoryRoute();

  @override
  createState() => CategoryRouteState();
}

class CategoryRouteState extends State<CategoryRoute> {
  final _categories = <Category>[];

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  void initState() {
    super.initState();
    for (var i = 0; i < _categoryNames.length; i++) {
      _categories.add(new Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.cake,
        units: _retrieveUnitList(_categoryNames[i]),
      ));
    }
  }

  _buildCategoryWidgets() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => _categories[index],
      itemCount: _categories.length,
    );
  }

  _retrieveUnitList(String categoryName) {
    return List.generate(10, (int i) {
      i += 1;
      return Unit(
        name: '$categoryName Unit $i',
        conversion: i.toDouble(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(),
    );

    final appBar = AppBar(
      elevation: 0.0,
      // backgroundColor: _backgroundColor,
      title: Text(
        'Unit Converter',
        style: TextStyle(color: Colors.black, fontSize: 30.0),
      ),
      centerTitle: true,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
