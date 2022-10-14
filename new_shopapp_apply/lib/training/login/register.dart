import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_news_app_apply/cubit/LoginCubit.dart';
import 'package:new_news_app_apply/cubit/states.dart';
import 'package:new_news_app_apply/shared/component.dart';

class RegisterScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, ShopStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit cubit = LoginCubit.get(context);
          return Scaffold(
              appBar: AppBar(),
              body: SafeArea(
                child: Form(
                  key: formKey,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(children: const [
                              Image(
                                image: AssetImage('assets/images/ShopLogo.png'),
                                width: 40,
                                height: 40,
                              ),
                              Text(
                                'new_news_app_apply',
                                style: TextStyle(fontSize: 25),
                              ),
                            ]),
                            const SizedBox(
                              height: 40,
                            ),
                            defaultFormField(
                                context: context,
                                controller: nameController,
                                keyboardType: TextInputType.name,
                                label: 'Name',
                                prefix: Icons.person,
                                validate: (value) {
                                  if (value!.isEmpty) return 'Your Name ';
                                }),
                            const SizedBox(
                              height: 40,
                            ),
                            defaultFormField(
                                context: context,
                                controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                label: 'Email Address',
                                prefix: Icons.email,
                                validate: (value) {
                                  if (value!.isEmpty)
                                    return 'Email Address must be filled';
                                }),
                            const SizedBox(
                              height: 40,
                            ),
                            defaultFormField(
                                context: context,
                                controller: passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                label: 'Password Address',
                                prefix: Icons.lock,
                                suffix: cubit.suffixIcon,
                                isPassword: cubit.showPassword ? false : true,
                                suffixPressed: () {
                                  cubit.changeSuffixIcon(context);
                                },
                                validate: (value) {
                                  if (value!.isEmpty)
                                    return 'Email Address must be filled';
                                }),
                            const SizedBox(
                              height: 40,
                            ),
                            defaultFormField(
                                context: context,
                                controller: phoneController,
                                keyboardType: TextInputType.phone,
                                label: 'PHONE',
                                prefix: Icons.phone,
                                validate: (value) {
                                  if (value!.isEmpty) {
                                    return 'PHONE';
                                  }
                                }),
                            const SizedBox(
                              height: 40,
                            ),
                            defaultButton(
                                onTap: () {
                                  if (formKey.currentState!.validate()) ;
                                },
                                text: 'Login')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ));
        },
      ),
    );
  }
}
