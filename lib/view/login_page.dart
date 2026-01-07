import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Text(
                "Welcome Back!",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 44),
              ),
            ),
            CustomTextfield(
              hintText: "Username or Email",
              icon: Icon(Icons.person),
            ),
            SizedBox(height: 40),
            CustomTextfield(
              hintText: "Password",
              icon: Icon(Icons.lock),
              isPassword: true,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Color.fromARGB(255, 248, 55, 88)),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: CustomButton(label: "LOGIN"),
            ),
            SizedBox(height: 60),
            Align(
              alignment: Alignment.center,
              child: Text("- OR Continue with -"),
            ),
            SizedBox(height: 20),

            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey.shade100,
              child: CircleAvatar(
                radius: 23,
                backgroundColor: Colors.white,
                backgroundImage:AssetImage("assets/images/g.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
