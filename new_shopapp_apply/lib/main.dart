import 'package:bloc/bloc.dart';
import 'package:new_news_app_apply/layout_data_base/layout_database_screen.dart';
import 'package:new_news_app_apply/remoteNetwork/dioHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_news_app_apply/cubit/appCubit.dart';
import 'package:new_news_app_apply/cubit/shopCubit.dart';
import 'package:new_news_app_apply/cubit/states.dart';
import 'package:new_news_app_apply/modules/LoginScreen.dart';
import 'package:new_news_app_apply/Layouts/shopLayout.dart';
import 'package:new_news_app_apply/remoteNetwork/cacheHelper.dart';
import 'package:new_news_app_apply/shared/bloc_observer.dart';
import 'package:new_news_app_apply/shared/constants.dart';
import 'package:new_news_app_apply/shared/themes.dart';
import 'package:new_news_app_apply/remoteNetwork/dioHelper.dart';
import 'package:new_news_app_apply/social_app/layout/home_screen.dart';
import 'package:new_news_app_apply/training/login/Login.dart';
import 'package:new_news_app_apply/training/onboarding/onboarding.dart';
import 'modules/OnBoardingScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  Widget widget;

  bool? isDark = CacheHelper.getData('isDark');
  bool? showOnBoard = CacheHelper.getData('ShowOnBoard');
  token = CacheHelper.getData('token');

  if (showOnBoard == false) {
    if (token != null)
      widget = ShopLayout();
    else
      widget = LoginScreen();
  } else
    widget = OnBoarding();
  runApp(MyApp(
    isDark: isDark,
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  final bool? isDark;
  late final Widget startWidget;
  MyApp({this.isDark, required this.startWidget});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit()),
          BlocProvider(
              create: (context) => ShopCubit()
                ..getHomeData()
                ..getCategoryData()
                ..getFavoriteData()
                ..getProfileData()
                ..getCartData()
                ..getAddresses()),
        ],
        child: BlocConsumer<ShopCubit, ShopStates>(
            listener: (context, state) {},
            builder: (context, state) {
              ShopCubit cubit = ShopCubit.get(context);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: TodoAppLayout(),
                theme: lightMode(),
                darkTheme: darkMode(),
                themeMode: cubit.isDark ? ThemeMode.dark : ThemeMode.light,
              );
            }));
  }
}
