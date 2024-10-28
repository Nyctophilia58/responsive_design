import 'package:flutter/material.dart';
import 'package:responsive_design/constants.dart';

import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class TableScaffold extends StatefulWidget{
  const TableScaffold({Key? key}) : super(key: key);

  @override
  _TableScaffoldState createState() => _TableScaffoldState();
}

class _TableScaffoldState extends State<TableScaffold>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const MyTile();
              },
            ),
          )
        ],
      )
    );
  }
}