import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grid_view_app/constants/images.dart';

class GridStaggered extends StatefulWidget {
  const GridStaggered({Key? key}) : super(key: key);

  @override
  _GridStaggerState createState() => _GridStaggerState();
}

class _GridStaggerState extends State<GridStaggered> {
  final _imgList = Images.imgList;
  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      itemCount: _imgList.length,
      itemBuilder: (context,index){
        var _height = Random().nextInt(200) + 150;
        return Card(
          shadowColor: Colors.lightGreenAccent.withOpacity(0.7),
          elevation: (Random().nextInt(20)+10).toDouble(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),

          ),
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Image(
              image: NetworkImage(_imgList[index]),
              height: _height.toDouble(),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

