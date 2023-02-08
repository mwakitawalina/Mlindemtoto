import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import '../Utils/utils.dart';
import '../widgetss/login.dart';

class AuthControlleralt extends GetxController {
  static AuthControlleralt get to => Get.find();

  Rxn<ParseUser> parseUser = Rxn<ParseUser>();
  Rxn<ParseObject> requestCount = Rxn<ParseObject>();

  @override
  Future<void> onInit() async {
    //run every time auth state changes
    // ever(firebaseUser, handleAuthChanged);
    
    await getParseUser();
    ever(parseUser, handleUserChanged);
    super.onInit();
  }

  // Firebase user one-time fetch
  Future<ParseUser> get getUser async {
    return await ParseUser.currentUser();
  }

  //get the firestore user from the firestore collection
  Future<void> getParseUser() async {
    try {
      if ((await ParseUser.currentUser()) != null) {
        parseUser.value = await ParseUser.currentUser();
        parseUser.refresh();
      }

      //print(parseUser.value);
      update();
    } catch (e) {
      print(e);
    }
  }

  //Login user Code
  login(username, password) async {

    if(username==""){
      Utils.showError("The username field must be filled!");
      return false;
    }

    if(password==""){
      Utils.showError("The password field must be filled!");
      return false;
    }

    try {
      var user = ParseUser(username, password, username);
      var res = await user.login();

      if (res.success) {
        await getParseUser();

        Utils.showSuccess('Login Successful!');
        return true;
      } else {
        Utils.showError(res.error?.message);
        return false;
      }
    } catch (error) {
      print(error);
      Utils.showError('Login Attempt Failed!');
    }

    return false;
  }

  //Signup User Code
  signup(name, email, phone, town, password) async {
    var user = ParseUser(email, password, email)
      ..set("name", name)
      ..set("phone", phone)
      ..set("town", town)
      ..set("hasAccount", true)
      ..set("photoUrl", "")
      ..set("role", "user")
      ..set("accountStatus", 1);

    try {
      var res = await user.signUp();

      if (res.success) {
        await getParseUser();

        Utils.showSuccess('Account Created Successfully!');
        return true;
      } else {
        Utils.showError(res.error?.message);
        return false;
      }
    } catch (error) {
      Utils.showError(error.toString());
    }

    Utils.showError('Signup Attempt Failed!');
    return false;
  }

  //Update Profile
  updateProfile(name, phone, town) async {
    //create the new user object
    ParseUser user = await ParseUser.currentUser();
    //create the user in firestore
    user
      ..set("name", name)
      ..set("phone", phone)
      ..set("town", town)
      ..set("hasAccount", true);

    await user.save();
    //await getParseUser();
    Utils.showSuccess('Profile Update Successful!');
    return true;
  }

  //password reset email
  Future<bool> sendPasswordResetEmail(email) async {
    Utils.showLoading();
    try {
      final ParseUser user = ParseUser(null, null, email);
      final ParseResponse parseResponse = await user.requestPasswordReset();
      if (parseResponse.success) {
        Utils.showSuccess('Password Reset Link sent to your email!');
        SmartDialog.dismiss();
        return true;
      } else {
        Utils.showError(parseResponse.error?.message);
      }
    } catch (error) {
      Utils.showError(error.toString());
    }
    SmartDialog.dismiss();
    return false;
  }

  // Sign out
  Future<bool> signOut() async {
    Utils.showLoading();
    if (await ParseUser.currentUser() != null) {
      await (await ParseUser.currentUser()).logout();
      await getParseUser();
      parseUser.value = null;
      update();
    } else {
      parseUser.value = null;
      update();
    }

    //Get.offAll(() => const Login());
    SmartDialog.dismiss();
    return true;
  }

  handleUserChanged(ParseUser? user) async {
    //print(_user);
    if (user == null) {
      if (Get.currentRoute != "/" && Get.currentRoute != "/Login") {
        Get.offAll(() => const Login());
      }
    }
  }
}


































/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mlindemtoto/widgetss/signup.dart';
import '../screens/dashboard.dart';
import '../widgetss/login.dart';
import '../utils/utils.dart';

class AuthControlleralt extends GetxController {
  static AuthControlleralt get to => Get.find();
  late Rx<User?> firebaseUser;
//holds extra user data
  var firebaseUserData = {}.obs;
//from Utils
  var auth;
  var firestore;

  late CollectionReference users;

  @override
  void onReady() {
    super.onReady();
    auth = FirebaseAuth.instance;
    firestore = FirebaseFirestore.instance;
    // initialize user
    users = firestore.collection('users');
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUserData.value = {};
    //track user data changes
    firebaseUser.bindStream(auth.userChanges());
    //If user changes to null, send user to login screen
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) async {
    if (user == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => Signup());
    } else {
      // if the user exists and logged in the the user is navigated to the Dashboard Screen
      Utils.showLoading(message: "Fetching Profile...");
      var fsUser = await users.doc(user.uid).get();
      firebaseUserData.value.addAll(
          fsUser.data() == null ? {} : fsUser.data() as Map<String, dynamic>);
      update();
      Get.offAll(() => DashBoard());
      Utils.dismissLoader();
    }
  }

  Future<bool> register(
      String fullName, String email, String password, String repeatPassword, String phone) async {
    Utils.showLoading(message: "Creating account…");
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      var user = auth.currentUser;
      if (user != null) {
        var fsUser = await users.doc(user.uid).get();

        if (!fsUser.exists) {
          await users
              .doc(user.uid)
              .set({"fullName": "$fullName", "email": "$email", "phone": "$phone", "password": "$password","repeatPassword": "$repeatPassword"});
        }
        Utils.showSuccess("Signup Successful!");
        Utils.dismissLoader();

        return true;
      } else {
        Utils.showError("Signup Failed!");
        Utils.dismissLoader();

        return false;
      }
    } catch (firebaseAuthException) {
      Utils.showError("Signup Failed!");
      Utils.dismissLoader();
      return false;
    }
  }

  Future<bool> login(String email, password) async {
    Utils.showLoading(message: "Authenticating…");

    try {
      await auth.loginWithEmailAndPassword(email: email, password: password);
      var user = auth.currentUser;

      if (user != null) {
        Utils.showSuccess("Login Successful!");
        //Utils.dismissLoader();
      }
    } catch (firebaseAuthException) {
      print(firebaseAuthException);
      Utils.showError("Login  Failed!");
      Utils.dismissLoader();
      return false;
    }
    Utils.dismissLoader();
    return false;
  }

  Future signOut() async {
    Utils.showLoading(message: "Signing out…");

    await auth.signOut();
    Utils.dismissLoader();
  }
}*/
