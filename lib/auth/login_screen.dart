import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_docs_clone/respositories/auth_respository.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

//WidgetRef: Interact With Widgets
//Read: ref.read outside the build function
//Watch: ref.watch inside the build fubction
  void signInWithGoogle(WidgetRef ref) {
    ref.read(authRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(authRepositoryProvider).signInWithGoogle();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInButton(
            Buttons.Google,
            text: "Sign up with Google",
            onPressed: () => signInWithGoogle(ref),
          )
        ],
      ),
    );
  }
}
