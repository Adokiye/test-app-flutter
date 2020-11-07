import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryBox extends StatelessWidget {
  final Category category;
  const CategoryBox({Key key, @required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
    //  elevation:1,
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
          onTap: category.onPressed,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 11),
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                category.icon,
              SizedBox(height:20.0),
              Container(
                decoration:BoxDecoration(
              color: Color(0xfff3f4f6),
              borderRadius: BorderRadius.circular(10.0),
                ),
                child:Padding(
                  padding:EdgeInsets.all(5),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                      Text(
                category.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height:5),
                Text(
                category.jobNo.toString()+' jobs',
                style: TextStyle(
                    color: Color(0xffc6c6df),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700),
              ),
                    ]
                  )
                )
              )
              ]
            ) 
          )),
    );
  }
}
