// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:new_news_app_apply/shared/constants.dart';

// class BottomnavScreen extends StatelessWidget {
//    final Function()? onPressed;
//   final IconData? icon;
//   final String? text;
  
//   final bool? active;

//   BottomnavScreen({
//   required  this.onPressed,
  
//   required  this.text,
//   required  this.icon,
//   required  this.active,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return MaterialButton(
//       onPressed: onPressed,
//       child: Container(
//         height: 40,
//         child: Column(
          
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Icon(icon,
//             color: active == true ? defaultColor:Colors.grey[300],
            
            
//             ),
//             Text(text!,style: TextStyle
//             (
//               color: active == true ? defaultColor:Colors.black,
//             ),)
//           ],
//         ),
//       ),   
//     );
//   }
// }