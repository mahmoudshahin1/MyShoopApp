
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_news_app_apply/cubit/LoginCubit.dart';
import 'package:new_news_app_apply/cubit/states.dart';
import 'package:new_news_app_apply/remoteNetwork/cacheHelper.dart';
import 'package:new_news_app_apply/shared/component.dart';
import 'package:new_news_app_apply/shared/constants.dart';
import 'package:new_news_app_apply/training/login/register.dart';

class LoginScreen1 extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var Formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LoginCubit(),
  child: BlocConsumer<LoginCubit, ShopStates>(
  listener: (context, state) {
   if( state is LoginSuccessState)
   {
     if (state.loginUserModel.status)
     {
       showToast(state.loginUserModel.message);
       CacheHelper.saveData(key: 'token', value: state.loginUserModel.data!.token);
     }else{
       showToast(state.loginUserModel.message);

     }
   }
  },

  builder: (context, state) {
    LoginCubit cubit = LoginCubit.get(context);
    return Scaffold(
      appBar: AppBar(
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: Formkey,

              child: Padding(
                padding: const EdgeInsets.all(15.0),

                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,


                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage('assets/images/ShopLogo.png',),width: 40,height: 40,),
                        separator(30, 30),
                        Text('ShopApp',style: TextStyle(fontSize: 25),),
                        separator(0, 40),




                      ],
                    ),
                        SizedBox(height: 30,),
                        Text('Ahlan ! Welcom Back!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        separator(0, 40),
                    defaultFormField(
                      context: context,
                      validate: (value){
                        if (value!.isEmpty){
                          return 'Email is not be Empty ';
                        }
                      },
                      controller:emailController ,
                      suffix: Icons.email,
                      label: 'Email Addres',
                      keyboardType: TextInputType.emailAddress,


                    ),
                    separator(0, 30),
                    defaultFormField(
                        context: context,
                        validate: (value){
                          if (value!.isEmpty){
                            return 'Password is not be Empty ';
                          }
                        },
                        controller:passwordController ,
                        prefix: Icons.lock,
                        label: 'Enter Password ',
                        keyboardType: TextInputType.visiblePassword,
                        suffix: cubit.suffixIcon,
                        isPassword: cubit.showPassword ?false:true ,
                        suffixPressed: (){
                          cubit.changeSuffixIcon(context);
                        }


                    ),



                    TextButton(onPressed: (){}, child: const Text('Forget Your Password ? ',
                      style: TextStyle(fontSize: 15,color: Colors.black),)),
                    separator(0, 30),


                    ConditionalBuilder(
                        condition: state is !LoginLoadingState ,
                        builder: (context) => defaultButton(onTap: (){
                          if (Formkey.currentState!.validate()){
                            cubit.signIn(

                              email: emailController.text,
                              password: passwordController.text,



                            );
                            token = CacheHelper.getData('token');



                          };
                        }, text: 'LOGIN',),
                        fallback: (context) => Center(child: CircularProgressIndicator()),),
                    separator(0, 30),


                    Row(
                      mainAxisAlignment:MainAxisAlignment.start ,
                      children: [
                        Text('Dont \' have an account ?',style: TextStyle(fontSize: 15),),
                        TextButton(onPressed: (){
                          navigateTo(context, RegisterScreen());
                        }, child: Text('Register Now ',))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )

    );
  },
),
);
  }
}
