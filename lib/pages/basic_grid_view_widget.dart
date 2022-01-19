
import 'package:flutter/material.dart';
import 'package:grid_view_app/constants/images.dart';

class BasicGridWidget extends StatelessWidget {
  const BasicGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _imgList = Images.imgList;
    return GridView.builder(

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
      ),
      itemCount: _imgList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          margin: EdgeInsets.zero,
          color: Colors.greenAccent,
          child: Image(
            image: NetworkImage(_imgList[index]),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        );
      },

    );
  }
}
