import 'package:appInterview/screens/category.dart';
import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/categoryBox.dart';
import '../models/category.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int _currentIndex = 0;
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

   List<Widget> _children = [
   CategoryScreen(),
   Container(),
   Container(),
 ];

 Color selectedColor = Color(0xff671cf0);

 Color unSelectedColor = Color(0xffc9c9d2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffececf9),
        body: _children[_currentIndex],
         floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child:FloatingActionButton(
           backgroundColor: selectedColor,
        onPressed: (){},
        child: Icon(Icons.search,color:Colors.white),
        shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
         )),
         bottomNavigationBar: Container(                                             
  decoration: BoxDecoration(                                                   
    borderRadius: BorderRadius.only(                                           
      topRight: Radius.circular(20), topLeft: Radius.circular(20)),                                                                               
  ),                                                                           
  child: ClipRRect(                                                            
    borderRadius: BorderRadius.only(                                           
    topLeft: Radius.circular(20.0),                                            
    topRight: Radius.circular(20.0),                                           
    ),                                                                         
    child:BottomNavigationBar(
       onTap: onTabTapped, // new
       currentIndex: _currentIndex,
       showSelectedLabels: true,
showUnselectedLabels: true, // new
       items: [
         new BottomNavigationBarItem(
           icon: _currentIndex==0?
           Icon(Icons.home,
           color: selectedColor)
           : Icon(Icons.home,
           color: unSelectedColor),
           title: Text('Home',
           style:TextStyle(
             fontSize: 12,
             color:_currentIndex==0?
           selectedColor:unSelectedColor
           )),
         ),
          new BottomNavigationBarItem(
           icon: _currentIndex==1?
           Icon(Icons.sms,
           color: selectedColor)
           : Icon(Icons.sms,
           color: unSelectedColor),
           title: Text('Inbox',
           style:TextStyle(
             fontSize: 12,
             color:_currentIndex==1?
           selectedColor:unSelectedColor
           )),
         ),
          new BottomNavigationBarItem(
           icon: _currentIndex==2?
           Icon(Icons.settings,
           color: selectedColor)
           : Icon(Icons.settings,
           color: unSelectedColor),
           title:Text('Settings',
           style:TextStyle(color:_currentIndex==2?
           selectedColor:unSelectedColor)),
         ),
          new BottomNavigationBarItem(
           icon: _currentIndex==3?
           Icon(Icons.settings,
           color: Colors.white)
           : Icon(Icons.settings,
           color: Colors.white),
           title:Text(''),
         ),
       ],
     ),
          )) );
  }
}
