// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


//PROVIDER REF:
//It is used to interact the class with others providers

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    googleSignIn: GoogleSignIn(),
    // client: Client(),
    // localStorageRepository: LocalStorageRepository(),
  ),
);

class AuthRepository {
  final GoogleSignIn _googleSignIn;
  AuthRepository({
    required GoogleSignIn googleSignIn,
  }) : _googleSignIn = googleSignIn;

  //Google Sign IN
  void signInWithGoogle() async {
    try {
      final user = await _googleSignIn.signIn();
      if (user != null) {
        print(user.email);
      }
    } catch (e) {
      print(e);
    }
  }
}
