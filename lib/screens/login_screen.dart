import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:social/screens/dashboard/dashboard_screen.dart';
import 'package:social/screens/signup_screen.dart';
import 'package:social/utils/colors.dart';
import 'package:social/utils/helper.dart';
import 'package:social/widgets/common_textfeild.dart';

import '../auth/auth_controller.dart';
import '../widgets/common_button.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {

  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              // welcome back, you've been missed!
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: AppColors.textColorShade2,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              // username textfield
              CommonTextField(
                controller: usernameController,
                hintText: 'Username',
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

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: AppColors.textColorShade1),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: () {
                  ref.read(authControllerProvider).logInWithEmail(email: usernameController.text,
                      password: passwordController.text, context: context);
                }, buttonText: 'login',
              ),

              const SizedBox(height: 50),
              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: AppColors.textColorShade2),
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: (){
                      navigateToScreen(context, SignUpPage());
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}