import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login-screen";
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  String _errorMessage = "";
  bool _isloading = false;

  @override
  void dispose() {
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
              height: 150,
            ),

            Image.asset(
              "assets/images/instagram_text.png",
              width: 100,
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
              height: 10,
            ),
            Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "forgot password?",
                    ))),
            SizedBox(
              height: 15,
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
                    "Sign In",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
            ),

            SizedBox(
              height: 25,
            ),

            TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/facebook_logo.png",
                  height: 27,
                  width: 27,
                  fit: BoxFit.cover,
                ),
                label: Text("Log in with facebook")),

            SizedBox(
              height: 25,
            ),

            Text(
              "OR",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: 'You have no account? ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                    text: ' Sign UP',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w500),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        //   Navigator.pushNamed(context, SignUpPage.routeName);
                      }),
              ]),
            ),
            SizedBox(
              height: 70,
            ),

            BottomAppBar(
              color: Colors.transparent,
              elevation: 0,
              child: Column(
                children: [
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Instagram from meta",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
