
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social/screens/dashboard/dashboard_screen.dart';
import 'package:social/screens/login_screen.dart';
import 'package:social/services/controller/services_controller.dart';

import '../../../utils/helper.dart';

/// this class has the firebase authentication functions

final authRepositoryProvider = Provider((ref) => AuthRepository(
    auth: FirebaseAuth.instance, ref: ref,
    ),
);




class AuthRepository {
    final FirebaseAuth auth;
    final ProviderRef ref;

    AuthRepository({required this.auth, required this.ref});

    void signInWithEmailAndPassword({required String email , required String password, required BuildContext context, required String mobile , required String name}) async {
      try {
        await auth.createUserWithEmailAndPassword(email: email, password: password).whenComplete(() {
          ref.read(serviceControllerProvider).createUser(name: name, mobile: mobile, email: email).whenComplete(() =>
              navigateAndRemovePush(context, const MobileHomeScreen()));
        }
        );

      } on FirebaseAuthException catch(e){
        showSnackBar(context: context, content: "${e.message}");
      }
    }

    void logInWithEmailAndPassword(String email , String password, BuildContext context) async {
      try {
        auth.signInWithEmailAndPassword(email: email, password: password).then((value) {
                if(value.user?.email != null) {
                  navigateAndRemovePush(context, const MobileHomeScreen());
                }
         }).catchError((error) {
          showSnackBar(context: context, content: "$error");
        });

      } catch (e){
        showSnackBar(context: context, content: "$e");
        throw Exception(e);
      }
    }

    void signOut({required BuildContext context}){
      try {
        auth.signOut().then((value) {
            navigateAndRemovePush(context, LoginPage());
        });
      }catch(e){
        throw Exception(e);
      }
    }
}