// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:new_news_app_apply/layout_data_base/bottomnav.dart';
// import 'package:new_news_app_apply/layout_data_base/cubit/database_cubit.dart';
// import 'package:new_news_app_apply/layout_data_base/cubit/databast_states.dart';
// import 'package:new_news_app_apply/shared/constants.dart';

// class dataBaselayoutScreen extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context) =>Databasecubit(),
//       child: BlocConsumer<Databasecubit,DatabaseStates>( 
        
//         listener: (context, state) {},
//         builder: (context, state) 
//         {
//           return  Scaffold(
//             appBar: AppBar
//             (
//               title: Text
//               (
//              'Home'
//               ),
//             ),
//         floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.deepOrange,
        
//         child: Icon(Icons.sports_basketball)),
        
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         bottomNavigationBar: BottomAppBar
//         (
//           notchMargin: 10,
          
//           child: Container(
            
//             color: Colors.deepOrange,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 10
//               ),
//               child: Row(
//                 children: [
//                   Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       BottomnavScreen
//                       (
//                         onPressed: ()
//                         {
//                           Databasecubit.get(context).ChangeBottomNav( Databasecubit.get(context).cureentIndex=0);
//                         },
//                         icon: (Icons.home),
//                         text: 'Home',active: Databasecubit.get(context).cureentIndex==0 ?true:false ,
//                       ),
//                       BottomnavScreen
//                       (
//                         onPressed: ()
//                         {
//                           Databasecubit.get(context).ChangeBottomNav( Databasecubit.get(context).cureentIndex=1);
//                         },
//                         icon: (Icons.settings),
//                         text: 'settings',active: Databasecubit.get(context).cureentIndex==1 ?true:false ,
//                       ),
                      
//                     ],
//                   ),
//                   Spacer(),
//                   Row(
//                     children: [
//                       BottomnavScreen
//                       (
//                         onPressed: ()
//                         {
//                        Databasecubit.get(context).ChangeBottomNav( Databasecubit.get(context).cureentIndex=2);

//                         },
//                         icon: (Icons.vaccines),
//                         text: 'vaccines',active: Databasecubit.get(context).cureentIndex==2 ?true:false ,
//                       ),
//                       BottomnavScreen
//                       (
//                         onPressed: ()
//                         {
//                      Databasecubit.get(context).ChangeBottomNav( Databasecubit.get(context).cureentIndex=3);

//                         },
//                         icon: (Icons.tab),
//                         text: 'tab',active: Databasecubit.get(context).cureentIndex==3 ?true:false ,
//                       ),
                      
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         body:Databasecubit.get(context).Screens[Databasecubit.get(context).cureentIndex] ,
//       );
//         },
//         ),
      
//     );
//   }
// }