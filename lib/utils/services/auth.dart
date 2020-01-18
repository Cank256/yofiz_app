import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:yofiz/screens/get_started.dart';

class AuthService with ChangeNotifier {
  var currentUser;

  AuthService() {
    print("new AuthService");
  }

  Future getUser() {
    return Future.value(currentUser);
  }

  // wrappinhg the firebase calls
  Future logout() {
    this.currentUser = null;
    notifyListeners();
    return Future.value(currentUser);
  }

  // wrapping the firebase calls
  Future createUser(
      {String firstName,
      String lastName,
      String email,
      String password}) async {}

  // logs in the user if password matches
  Future loginUser({String email, String password}) {
    if (password == 'password123') {
      this.currentUser = {'email': email};
      notifyListeners();
      return Future.value(currentUser);
    } else {
      this.currentUser = null;
      return Future.value(null);
    }
  }
}

//Google sign in

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

Future<String> signInWithGoogle() async {
  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final AuthResult authResult = await _auth.signInWithCredential(credential);
  final FirebaseUser user = authResult.user;

  assert(!user.isAnonymous);
  assert(await user.getIdToken() != null);

  final FirebaseUser currentUser = await _auth.currentUser();
  assert(user.uid == currentUser.uid);

  return 'signInWithGoogle succeeded: $user';
}

void signOutGoogle() async {
  await googleSignIn.signOut();

  print("signed out");
}

Future<void> signOut() async {
  try {
    await _auth.signOut();
    return new GetStartedWidget();
  } catch (e) {
    print(e);
  }
}

//Facebook sign in

// bool _isLoggedIn = false;
// Map userProfile;
// final facebookLogin = FacebookLogin();

// _loginWithFB() async {
//   final result = await facebookLogin.logIn(['email']);

//   switch (result.status) {
//     case FacebookLoginStatus.loggedIn:
//       final token = result.accessToken.token;
//       final graphResponse = await http.get(
//           'https://graph.facebook.com/v2.12/me?fields=name,picture,email&access_token=${token}');
//       final profile = JSON.jsonDecode(graphResponse.body);
//       print(profile);
//       setState(() {
//         userProfile = profile;
//         _isLoggedIn = true;
//       });
//       break;

//     case FacebookLoginStatus.cancelledByUser:
//       setState(() => _isLoggedIn = false);
//       break;
//     case FacebookLoginStatus.error:
//       setState(() => _isLoggedIn = false);
//       break;
//   }
// }

// void setState(bool Function() param0) {}
