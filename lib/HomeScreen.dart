import 'dart:math';

import 'package:bmi_calculater/Screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
    double slidervalue=30;
    int age=28;
    int weight=60;
    bool ismale=true;
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        //backgroundColor: Color(0xff090E1D),
        appBar: AppBar(
          backgroundColor: Color(0xff090E1D),
          title: Center(
            child: Text("BMI CALCULATOR",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
        body: Container(
          color: Color(0xff090E1D) ,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
               children: [
                 Row(
                   children: [
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             ismale=true;
                           });
                         },
                         child: Container(
                           color: ismale? Colors.blue :Color(0xff0F1221),
                           height: 150,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                              Icon((Icons.male),
                              size: 90,
                               color: Colors.white,
                             ),

                               SizedBox(height: 5),
                               Text("MALE",
                               style: TextStyle(
                                 fontSize: 20,
                                 color: Colors.grey,
                               ),
                               )
                             ],

                           ),
                         ),
                       ),
                     ),
                     SizedBox(width: 20,),
                     Expanded(
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             ismale=false;
                           });
                         },
                         child: Container(
                           color: ismale?Color(0xff0F1221) :Colors.blue ,
                           height: 150,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                               Icon((Icons.female),
                                 size: 90,
                                 color: Colors.white,
                               ),

                               SizedBox(height: 5),
                               Text("FEMALE",
                                 style: TextStyle(
                                   fontSize: 20,
                                   color: Colors.grey,
                                 ),
                               )
                             ],

                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 30,bottom: 30),
                   child: Container(
                     width: double.infinity,
                     color: Color(0xff191A2C) ,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 20),
                           child: Text("Height",
                           style: TextStyle(
                             fontSize: 20,
                             color: Colors.grey,
                           ),
                           ),
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.baseline,
                           textBaseline:TextBaseline.alphabetic ,
                           children: [
                             Text("${slidervalue.round()}",
                               style: TextStyle(
                                 fontSize: 40,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                             Text("cm",
                                 style: TextStyle(
                                   color: Colors.grey,
                                   fontSize: 20,
                                 ),
                             ),
                           ],
                         ),
                         SizedBox(height: 5),
                         Slider(
                             value: slidervalue ,
                             max:200 ,
                             min: 1,
                             onChanged: (value){
                               setState(() {
                               setState(() {
                                 slidervalue=value;
                               });
                               });
                             }

                         ),
                       ],
                     ),
                   ),
                 ),
                 Row(
                   children: [
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Color(0xff0191A2C),
                         ),
                         height: 150,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Weight",
                               style: TextStyle(
                                 color: Colors.grey,
                               ),
                             ),
                             Text("${weight}",
                               style: TextStyle(
                                 fontSize: 30,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),

                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 FloatingActionButton(onPressed: (){
                                   setState(() {
                                     weight--;
                                     if(weight<=15){
                                       weight=15;
                                     }
                                   });
                                 },
                                   mini: true,
                                   child: Icon(Icons.remove),
                                 ),
                                 SizedBox(width: 10,),
                                 FloatingActionButton(onPressed: (){
                                   setState(() {
                                     weight++;
                                   });
                                 },
                                   mini: true,
                                   child: Icon(Icons.add,
                                   ),
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                     SizedBox(width: 15,),
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Color(0xff0191A2C),
                         ),
                         height: 150,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Age",
                               style: TextStyle(
                                 color: Colors.grey,
                               ),
                             ),
                             Text("${age}",
                               style: TextStyle(
                                 fontSize: 30,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),

                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 FloatingActionButton(onPressed: (){
                                   setState(() {
                                     age--;
                                     if(age<=1){
                                       age=1;
                                     }
                                   });
                                 },
                                   mini: true,
                                   child: Icon(Icons.remove),
                                 ),
                                 SizedBox(width: 10,),
                                 FloatingActionButton(onPressed: (){
                                   setState(() {
                                     age++;
                                   });
                                 },
                                   mini: true,
                                   child: Icon(Icons.add,

                                   ),
                                 ),
                               ],
                             )
                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
                 MaterialButton(
                   onPressed: () {
                     double result=weight/pow(slidervalue/100, 2);
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                       return Calculate(
                         result: result,
                         ismale: ismale,
                         age: age,

                       );
                     }
                     )
                     );
                   },
                   child: Container(
                     margin: EdgeInsets.only(top: 30),
                     width: double.infinity,
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.white30,
                     ),
                     child: Center(child: Text("Calculate",
                     style: TextStyle(
                       fontSize: 25,
                       color: Colors.white,
                     ),
                     )),
                   ),
                 )
               ],
            ),
          ),
        ),
      );
  }
}