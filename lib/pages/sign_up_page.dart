import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/login_screen.dart';

class SignUpPage extends StatefulWidget {
  static const routeName = "/sign-up-page";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  String _errorMessage = "";
  bool _isloading = false;

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          children: [
            SizedBox(
              height: 100,
            ),

            Image.asset(
              "assets/images/instagram_text.png",
              width: 100,
            ),

            TextFormField(
              controller: nameController,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 0.6)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1)),
                  filled: true,
                  fillColor: const Color(0xffe6e6e6).withOpacity(0.4),
                  contentPadding: const EdgeInsets.only(left: 10),
                  focusColor: Colors.white,
                  hintText: "Enter your full name",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: emailController,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 0.6)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1)),
                  filled: true,
                  fillColor: const Color(0xffe6e6e6).withOpacity(0.4),
                  contentPadding: const EdgeInsets.only(left: 10),
                  focusColor: Colors.white,
                  hintText: "Enter your email",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: userNameController,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 0.6)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1)),
                  filled: true,
                  fillColor: const Color(0xffe6e6e6).withOpacity(0.4),
                  contentPadding: const EdgeInsets.only(left: 10),
                  focusColor: Colors.white,
                  hintText: "Enter your user name",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 15,
            ),
            // todo this is password textField section
            TextFormField(
              obscureText: _isObscure,
              controller: passwordController,
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 0.6)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1)),
                  filled: true,
                  fillColor: const Color(0xffe6e6e6).withOpacity(0.4),
                  contentPadding: EdgeInsets.only(left: 10),
                  focusColor: Colors.white,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.normal),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field must not be empty';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 50,
            ),


            SizedBox(
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade500,
                      onPrimary: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      //    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                    }
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
            ),




            SizedBox(
              height: 40,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: 'You have a account? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                    text: ' Sign In',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      }),
              ]),
            ),

          ],
        ),
      ),

    );
  }
}
