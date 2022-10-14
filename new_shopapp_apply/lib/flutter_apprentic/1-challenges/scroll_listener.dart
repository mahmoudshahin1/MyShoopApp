// import 'package:flutter/material.dart';

// class ScrollListenerChallanges extends StatefulWidget {
//   const ScrollListenerChallanges({super.key});

//   @override
//   State<ScrollListenerChallanges> createState() => _ScrollListenerChallangesState();
// }

// class _ScrollListenerChallangesState extends State<ScrollListenerChallanges> {
//   var scrolllistener = scrollListener();

//   @override
//   void initState() {
//     scrollListener;
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold
//     (
//       appBar: AppBar(),
//       body: ListView.separated(
      
        
//         controller:scrolllistener ,
//         scrollDirection:Axis ,
        
        
//         physics: BouncingScrollPhysics(),
//         itemBuilder:  itemBuilder, 
//         separatorBuilder: separatorBuilder, 
//         itemCount: itemCount)
//     );
//   }
  
  
// }