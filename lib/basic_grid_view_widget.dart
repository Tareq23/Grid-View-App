
import 'package:flutter/material.dart';

class BasicGridWidget extends StatelessWidget {
  const BasicGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
      ),
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          margin: EdgeInsets.zero,
          color: Colors.greenAccent,
          child: Center(child: Text("index : $index")),
        );
      },

    );
  }
}
