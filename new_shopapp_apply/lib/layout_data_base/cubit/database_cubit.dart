// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:new_news_app_apply/layout_data_base/cubit/databast_states.dart';
// import 'package:new_news_app_apply/layout_data_base/modules/datahome.dart';
// import 'package:new_news_app_apply/social_app/screens/chat.dart';
// import 'package:new_news_app_apply/social_app/screens/settings.dart';
// import 'package:new_news_app_apply/social_app/screens/users.dart';

// class Databasecubit extends Cubit <DatabaseStates>
// {

//     Databasecubit() :super  (IntialDatabaseState());

//     static Databasecubit get (context) => BlocProvider.of(context);


//   int cureentIndex = 0;

//   var titles = 
  
//   [
//     'Home '
//     'Settings '
//     'WELCOOM '
//     'chat '
//   ];

//   List <Widget> Screens = 
//   [
//     DataHomeScreen(),
//     SettingScreen(),
//     UserScreen(),
//     ChatsScreen(),
    
//   ];

//   void ChangeBottomNav(index)
//   {
//     cureentIndex = index;
//     emit(DatabaseBottomNavState());
//   }



// }