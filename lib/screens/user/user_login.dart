import 'package:flutter/material.dart';
import 'package:rider_app/widgets/textform_feild.dart';

class UserLogin extends StatefulWidget {
  UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  //controller
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  //for visibilitty
  FocusNode? passwordfocus;
  bool isPassowrd = true;

  //////form key method/////
  final formkey = GlobalKey<FormState>();
  bool formStateLoadning = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///boday area
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 30),
            ),
            ///text field first
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: EcoTextField(
                controller: emailcontroller,
                hintText: "email",
                icon: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ///text field second
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: EcoTextField(
                controller: passwordcontroller,
                hintText: "password",
                isPassowrd: isPassowrd,
                icon: IconButton(
                  onPressed: () {
                    setState(() {
                      isPassowrd = !isPassowrd;
                    });
                  },
                  icon: isPassowrd
                      ? const Icon(
                          Icons.visibility,
                          color: Color.fromARGB(255, 255, 134, 174),
                        )
                      : const Icon(Icons.visibility_off),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
