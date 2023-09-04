import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingdatacontroler.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  signInWithGoogle();
  signOut();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  MyServices myservices = Get.find();
  LoginData loginData = LoginData(Get.find());
  bool isshowpassword = true;

  StatusRequest? statusRequest;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      //print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
           // data.addAll(response['data']);
          myservices.sharedPreferences.setString("id",response['data']['users_id']);
          myservices.sharedPreferences.setString("username", response['data']['users_name']);
          myservices.sharedPreferences.setString("email", response['data']['users_email']);
          myservices.sharedPreferences.setString("phone", response['data']['users_phone']);
          myservices.sharedPreferences.setString("step", "2");
          Get.offNamed(Approutes.homepage);
        } else {
          Get.defaultDialog(
              title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignUp() {
    Get.toNamed(Approutes.signUp);
  }

  Future<void> signInWithGoogle() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken,
        );
        UserCredential authResult =
            await _auth.signInWithCredential(authCredential);
        User user = authResult.user!;

        print('User email: ${user.email}');
        Get.offNamed(Approutes.homepage);
      } else {
        // User cancelled Google Sign-In
        print('Google Sign-In cancelled.');
      }
    } catch (error) {
      print('Error during Google Sign-In: $error');
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    print('sign out');
  }
   
  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(Approutes.forgetpassword);
  }
}
