import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social/auth/auth_controller.dart';
import 'package:social/services/controller/services_controller.dart';
import 'package:social/services/repository/graphql_services.dart';
import 'package:social/services/states/services_state.dart';
import 'package:social/utils/colors.dart';
import 'package:social/utils/helper.dart';
import 'package:social/widgets/common_textfeild.dart';

import '../model/user_model.dart';
import '../widgets/common_button.dart';

class SignUpPage extends ConsumerWidget {
  SignUpPage({super.key});

  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobileController = TextEditingController();
  final nameController = TextEditingController();
  final bioController = TextEditingController();


  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return  Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  // welcome back, you've been missed!
                  Text(
                    'Registration',
                    style: TextStyle(
                      color: AppColors.textColorShade2,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // name textfield
                  CommonTextField(
                    controller: nameController,
                    hintText: 'Name',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  // username textfield
                  CommonTextField(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  // password textfield
                  CommonTextField(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: true,
                  ),

                  const SizedBox(height: 10),
                  // mobile textfield
                  CommonTextField(
                    controller: mobileController,
                    hintText: 'Mobile',
                    obscureText: false,
                    textInputType: TextInputType.number,
                  ),
                  const SizedBox(height: 25),
                  // sign in button
                  MyButton(
                    onTap:(){

                      ref.read(authControllerProvider).signInWithEmail(
                        email: emailController.text,
                        password: passwordController.text,
                        context: context,
                        mobile: mobileController.text,
                        name: nameController.text,
                      );

                    }, buttonText: 'Sign up',
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        );

      },

    );
  }
}