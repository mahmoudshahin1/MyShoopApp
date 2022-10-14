import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_news_app_apply/models/categoriesModels/categoriesDetailsModel.dart';
import 'package:new_news_app_apply/shared/component.dart';
import 'package:new_news_app_apply/social_app/layout/cubit/cubit.dart';
import 'package:new_news_app_apply/social_app/layout/cubit/state.dart';

class TodoAppLayout extends StatelessWidget {

  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();
  var TextController = TextEditingController();
  var timeController = TextEditingController();
  var dataController = TextEditingController();
  var isbottomSheetShown = false;
  IconData iconbottom = Icons.add;


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create: (context) => SocialCubit(),
      child: BlocConsumer<SocialCubit, SocialAppStates>(
        listener: (context, state) {
          
        },
        builder: (context, state) {
          SocialCubit cubit = SocialCubit.get(context);
          return Scaffold(
            key: scaffoldkey,
            appBar: AppBar(
              title: Text(
                cubit.titles[cubit.cureentIndex],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                
                scaffoldkey.currentState!.showBottomSheet((context) => 

                BulidBottomSheet(context),
                

                );
                
                

                
              },
              child: Icon(Icons.add),),
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.bottomNav,
              currentIndex: cubit.cureentIndex,
              onTap: (index) {
                cubit.ChangeNav(index);
              },
            ),
            body: cubit.Screen[cubit.cureentIndex],
          );
        },
      ),
     
    );
  }


  Widget BulidBottomSheet(context,) => Form(
    key: formKey,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
  
          defaultFormField(
            context: context, 
            validate: (value)
            {
              if (value!.isEmpty)
              {
                return 'Text Not be Emty';
              }
              return null;
            },
            label: 'Into your tasks',
            keyboardType: TextInputType.text,
            controller: TextController,
            prefix: Icons.person,

            ),
            SizedBox(height: 15.0,),
             defaultFormField(
            context: context, 
            validate: (value)
            {
              if (value!.isEmpty)
              {
                return 'time Not be Emty';
              }
              return null;
            },

            onTap: ()
            {
              showTimePicker(context: context, initialTime:TimeOfDay.now()).then((value) {
                timeController.text = value!.format(context).toString();
              });
            },
            
            keyboardType: TextInputType.text,
            controller:timeController,
            prefix: Icons.watch,
            label: 'Enter your Time',

            
            
            

            ),
            SizedBox(height: 20,),
            defaultFormField(
            context: context, 
            validate: (value)
            {
              if (value!.isEmpty)
              {
                return 'time Not be Emty';
              }
              return null;
            },

            onTap: ()
            {
              showDatePicker(context: context, 
              initialDate:DateTime.now(), 
              firstDate: DateTime.now(), 
              lastDate:DateTime.parse('2022-10-30'));
            },
            
            keyboardType: TextInputType.text,
            controller:timeController,
            prefix: Icons.watch,
            label: 'Enter your Time',

            
            
            

            ),


        ],
      ),
    ),
  );
}
