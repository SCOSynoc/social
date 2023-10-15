import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'auth_repository.dart';


///this class is  for interacting authentication functions with authentication ui



final authControllerProvider = Provider((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AuthController(authRepository: authRepository, ref: ref);
});

class AuthController {
  final AuthRepository authRepository;
  final ProviderRef ref;

  AuthController({required this.authRepository,required this.ref});


  void signInWithEmail({required String email , required String password, required BuildContext context,
    required String mobile, required String name}){
    authRepository.signInWithEmailAndPassword(email: email,
        password: password, context: context, mobile: mobile,  name: name);
  }

  void logInWithEmail({required String email , required String password, required BuildContext context}){
    authRepository.logInWithEmailAndPassword(email, password, context);
  }

  void logOut({required BuildContext context}){
    authRepository.signOut(context: context);
  }

}