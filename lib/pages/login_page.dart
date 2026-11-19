import 'package:confido/components/my_button.dart';
import 'package:confido/components/my_textfield.dart';
import 'package:confido/components/square_tile.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign In Method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              //LOGO
              const Icon(Icons.lock, size: 100),
              //WELCOME BACK, YOUVE BEEN MISSED!

              const SizedBox(height: 50),

              Text(
                "Welcome back, You have been missed! ",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(height: 25),

              //USERNAME TEXTFIELD
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obsureText: false,
              ),

              const SizedBox(height: 10),
              //PASSWORD TEXTFIELD
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsureText: true,
              ),

              const SizedBox(height: 10),

              //FORGOT PASSWORD
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //SIGN IN BUTTON
              MyButton(onTap: signUserIn,buttonText: "Sign In",),

              const SizedBox(height: 50),

              //OR CONTINUE WITH
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400]),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),

                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50),
              //GOOGLE + APPLE SIGN IN  BUTTONS

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //google button
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 25),
                  //Apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),
              //NOT A MEMBER? REGISTER NOW
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(width: 2),
                  const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
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
