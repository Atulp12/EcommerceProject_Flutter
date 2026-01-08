import 'package:ecommerce_app/cores/common/custom_button.dart';
import 'package:ecommerce_app/cores/common/custom_textfield.dart';
import 'package:ecommerce_app/cores/theme/app_color.dart';
import 'package:ecommerce_app/view/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 170,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Create an Account",
                    style: textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 60),
              CustomTextfield(
                hintText: "Username or Email",
                icon: Icon(Icons.person),
              ),
              SizedBox(height: 30),
              CustomTextfield(
                hintText: "Password",
                icon: Icon(Icons.lock),
                isPassword: true,
              ),
              SizedBox(height: 30),
              CustomTextfield(
                hintText: "Confirm Password",
                icon: Icon(Icons.lock),
                isPassword: true,
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "By clicking the Register button, you agree to the public offer",
                  style: textTheme.labelMedium
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: CustomButton(label: "Register"),
              ),
              SizedBox(height: 60),
              Align(
                alignment: Alignment.center,
                child: Text("- OR Continue with -",style: textTheme.labelLarge),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  loginMethodIcons("assets/images/g.png"),
                  SizedBox(width: 15),
                  loginMethodIcons("assets/images/apple.png"),
                  SizedBox(width: 15),
                  loginMethodIcons("assets/images/facebook.png")
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I already have an Account ",style: textTheme.headlineSmall,),
                  Text(
                    "Login",
                    style: textTheme.headlineSmall?.copyWith(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.primaryColor,
                    ),
                 
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}