import 'package:flutter/material.dart';
import 'package:grid_view_app/constants/color_value.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridHome(),
    );
  }
}

class GridHome extends StatefulWidget {
  const GridHome({Key? key}) : super(key: key);

  @override
  _GridHomeState createState() => _GridHomeState();
}

class _GridHomeState extends State<GridHome> {
  bool _basicTabAcitve = true;
  bool _dynamicTabAcitve = false;
  bool _sliverTabAcitve = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstantColor.appBarBg,
        title: const Text('Grid View App',style: TextStyle(color: ConstantColor.appBarText),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 40,right: 40,top: 20),
            width: MediaQuery.of(context).size.width-80,
            padding: const EdgeInsets.only(left: 20,right: 20, top: 10,bottom: 2),
            decoration:  BoxDecoration(
              color: const Color(0xff123456),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _basicTabAcitve = true;
                      _dynamicTabAcitve = false;
                      _sliverTabAcitve = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: _basicTabAcitve == true ? const Border(
                        bottom: BorderSide(
                          width: 5,
                          color: Colors.white
                        )
                      ) : null
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.home,color: ConstantColor.iconColor,),
                        Text('Basic',style: TextStyle(color: ConstantColor.iconColor,),),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _basicTabAcitve = false;
                      _dynamicTabAcitve = true;
                      _sliverTabAcitve = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: _dynamicTabAcitve == true ? const Border(
                            bottom: BorderSide(
                                width: 5,
                                color: Colors.white
                            )
                        ) : null
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.dynamic_feed,color: ConstantColor.iconColor,),
                        Text('Dynamic',style: TextStyle(color: ConstantColor.iconColor,),),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _basicTabAcitve = false;
                      _dynamicTabAcitve = false;
                      _sliverTabAcitve = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: _sliverTabAcitve == true ? const Border(
                            bottom: BorderSide(
                                width: 5,
                                color: Colors.white
                            )
                        ) : null
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.dynamic_feed,color: ConstantColor.iconColor,),
                        Text('Sliver',style: TextStyle(color: ConstantColor.iconColor,),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

