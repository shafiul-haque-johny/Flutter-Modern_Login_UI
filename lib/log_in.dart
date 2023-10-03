import 'package:flutter/material.dart';
import 'package:login_ui_auth/signin_button.dart';
import 'package:login_ui_auth/square_tile.dart';
import 'package:login_ui_auth/text_field.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 35),

              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),

              //username textfeild
              MyTextField(
                myController: usernameController,
                hintText: 'Type Your Username',
                obscureText: false,
              ),
              const SizedBox(height: 20),

              //password textfeild
              MyTextField(
                myController: passwordController,
                hintText: 'Type Your Password',
                obscureText: true,
              ),
              const SizedBox(height: 15),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // signin button
              MyButton(
                onTap: () => signUserIn,
              ),
              const SizedBox(height: 25),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              //google + apple sign in buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: 'assets/images/google.png',
                  ),
                  SizedBox(width: 25),
                  SquareTile(
                    imagePath: 'assets/images/apple.png',
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member? ', style: TextStyle(color:Colors.grey[700],),),
                  const SizedBox(height: 10),
                  const Text('Register now', style: TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold,
                  ),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
