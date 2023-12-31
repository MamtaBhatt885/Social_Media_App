import 'package:flutter/material.dart';
import 'package:social_media_app/components/my_button.dart';
import 'package:social_media_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {

final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});


// text controller
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();

  //login method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(Icons.person,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary),

              const SizedBox(height: 25),
              //app name
              const Text(
                'M I N I M A L',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(
                height: 50,
              ),

              //username textfield
              MyTextField(
                  hintText: "Username",
                  obsecureText: false,
                  controller: usernameController),
              const SizedBox(
                height: 10,
              ),
              //email textfield
              MyTextField(
                  hintText: "Email",
                  obsecureText: false,
                  controller: emailController),

              const SizedBox(
                height: 10,
              ),

              //password textfield
              MyTextField(
                  hintText: "Password",
                  obsecureText: true,
                  controller: passwordController),

              const SizedBox(height: 10),

              //confirm password textfield
              MyTextField(
                  hintText: "Confirm Password",
                  obsecureText: true,
                  controller: confirmPwController),

              // forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //Register button
              MyButton(text: 'Register', onTap: register),

              SizedBox(
                height: 10,
              ),
              //don't have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      "Login Here",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
