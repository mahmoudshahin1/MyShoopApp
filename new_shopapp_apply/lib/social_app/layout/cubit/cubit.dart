import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_news_app_apply/social_app/layout/cubit/state.dart';
import 'package:new_news_app_apply/social_app/screens/chat.dart';
import 'package:new_news_app_apply/social_app/screens/home.dart';
import 'package:new_news_app_apply/social_app/screens/settings.dart';
import 'package:new_news_app_apply/social_app/screens/users.dart';

class SocialCubit extends Cubit<SocialAppStates> {
  SocialCubit() : super(SocialAppInitialState());

  static SocialCubit get(context) => BlocProvider.of(context);

  int cureentIndex = 0;

  List<BottomNavigationBarItem> bottomNav = [
    BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Task'),
    BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done'),
    BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'archive'),
  ];

  List<Widget> Screen = [
    NewTasksScreen(),
    DoneScreen(),
    ArchiveScreen(),
  
  ];

  List<String> titles = [
    'New Tasks',
    'Done',
    'archive',
    
  ];
  void ChangeNav(int index) {
    cureentIndex = index;
    emit(SocialAppBottomNavState());
  }

 var isbottomSheetShown = true;
 IconData iconbottom = Icons.favorite_border;

  // void CloseBottomSheet(context)
  // {
  //   if (isbottomSheetShown )
  //   {
  //     Navigator.pop(context);
      
  //     isbottomSheetShown = false;
  //     emit(BottomnavsheetShown());
  //   }
     

  // }
}
