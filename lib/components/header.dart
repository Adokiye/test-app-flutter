import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation:1,
      child:Container(
        color:Colors.white,
      child:Padding(
        padding: EdgeInsets.all(20),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff071232),
                    fontSize: 26.0,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Color(0xffeb4546),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Icon(Icons.link, color: Colors.white, size: 15)),
                  ),
                  SizedBox(width: 5),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://res.cloudinary.com/gorge/image/upload/v1592820243/Ellipse_25.png',
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40))
                ],
              )
            ]))));
  }
}
