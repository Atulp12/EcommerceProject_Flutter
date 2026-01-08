import 'package:ecommerce_app/cores/common/custom_button.dart';
import 'package:ecommerce_app/cores/common/custom_textfield.dart';
import 'package:ecommerce_app/cores/theme/app_color.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                height: 200,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Welcome Back!",
                    style: textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 80),
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
                  style: TextStyle(color: AppColor.primaryColor),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: CustomButton(label: "Login"),
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
                  Text("Create an Account ",style: textTheme.headlineSmall,),
                  Text(
                    "Sign up",
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


Widget loginMethodIcons(String image){
  return Container(
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 251, 239, 241),
                  border: Border.all(color: AppColor.primaryColor,width: 2)
                ),
                
                child: Image.asset(image)
              );
}