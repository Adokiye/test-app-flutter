import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/categoryBox.dart';
import '../models/category.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
    List<Category> categoryArray = [
    Category(
        title: 'Design',
        onPressed: () {},
        jobNo: 8000,
        icon: Icon(Icons.archive, color: Color(0xff3750d8), size: 32.0)),
    Category(
        title: 'IT',
        onPressed: () {},
        jobNo: 8000,
        icon:
            Icon(Icons.signal_wifi_off, color: Color(0xff73b921), size: 32.0)),
    Category(
        title: 'Marketing',
        onPressed: () {},
        jobNo: 8000,
        icon: Icon(Icons.directions, color: Color(0xfffbbc5c), size: 32.0)),
    Category(
        title: 'Design',
        onPressed: () {},
        jobNo: 8000,
        icon: Icon(Icons.archive, color: Color(0xff3750d8), size: 32.0)),
    Category(
        title: 'IT',
        onPressed: () {},
        jobNo: 8000,
        icon:
            Icon(Icons.signal_wifi_off, color: Color(0xff73b921), size: 32.0)),
    Category(
        title: 'Marketing',
        onPressed: () {},
        jobNo: 8000,
        icon: Icon(Icons.directions, color: Color(0xfffbbc5c), size: 32.0)),
  ];
@override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Header(title: 'Categories'),
              new SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new GridView.count(
                              crossAxisCount: 2,
                              controller:
                                  new ScrollController(keepScrollOffset: false),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: categoryArray.map((Category item) {
                                return CategoryBox(
                                  category: item,
                                );
                              }).toList(),
                            ),
                          ])))
            ],
     ) );
           }
}
