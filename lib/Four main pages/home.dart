import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  final List bookType=[
    ["This Week",true,],
    ["This Month",false,],
    ["This Year",false]

  ];


  void bookTypeSelected(int index){

    setState(() {
      for(int i=0; i< bookType.length;i++){  //loop er maddhome ekta ekta kore select r  unselect hbe
        bookType[i][1]= false;
      }
      bookType[index][1]=true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(  /// search field create
              decoration:InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: 'Happy reading...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.green),
                  borderRadius: BorderRadius.circular(22),

                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.brown),
                  borderRadius: BorderRadius.circular(22),
                ),

              ),
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row( mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container( decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(11)),
                    height: 150,width: 300,
                    child: Text("jjhg"),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container( decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(11)),
                    height: 150,width: 300,
                    child: Text("jjhg"),
                  ),
                ),

              ],
            ),
          ),
SizedBox(height: 20,),
          
        ],
          )
    );
  }
}