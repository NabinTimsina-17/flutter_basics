import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
        var h = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Colums"),
        ),
        body:Container(
          height: h,
          width: w,
          color: Colors.yellow,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(height: 60,width: 60,color: Colors.red),
              Container(height: 60,width: 60,color: Colors.orange),
              Container(height: 60,width: 60,color: Colors.black),
              Container(height: 60,width: 60,color: Colors.green),
              Container(height: 60,width: 60,color: Colors.brown),
              Container(height: 60,width: 60,color: Colors.indigo),

            ],
          )
    ));
  }
}