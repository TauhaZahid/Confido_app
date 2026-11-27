import 'package:confido/components/my_button.dart';
import 'package:confido/pages/auth_page.dart';
import 'package:confido/pages/login_page.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    void goToLogin() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AuthPage()),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Confido"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //TEXT FOR CONFIDO TITLE
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  'lib/images/Confido Logo.png',
                  fit: BoxFit.contain,
                ),
              ),

              const Text(
                "Pracise with Confidence",
                style: TextStyle(color: Colors.deepPurple, fontSize: 25),
              ),

              const SizedBox(height: 16),

              const Text("Ready to practise?", style: TextStyle(fontSize: 16)),

              SizedBox(height: 10),

              const Text(
                "Note: Confido will not record your voice or face.",
                style: TextStyle(fontSize: 10),
              ),

              SizedBox(height: 20),

              //BUTTON FOR GET STARTED
              MyButton(onTap: goToLogin, buttonText: "Get Started")
            ],
          ),
        ),
      ),
    );
  }
}
