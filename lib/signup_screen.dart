import 'package:flutter/material.dart';
import 'package:my_first_app/signin_screen.dart';
import 'app_button.dart';
import 'textField.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: const Color(0xFF191720),
      body: Padding(
          padding: const EdgeInsets.only(
              top: 110,
              left: 27,
              bottom: 59,
              right: 27
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Let's sign you up",
                style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 14),
              const Text(
                "Welcome \nJoin the community!",
                style: TextStyle(color: Colors.white, fontSize: 30,
                fontWeight: FontWeight.w300, fontFamily: 'Poppins'),
              ),
              const SizedBox(height: 47),
              const AppTextField(placeholder: "Enter your full name"),
              const AppTextField(placeholder: "Enter your email address"),
              const AppTextField(placeholder: "Enter your password"),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_)=> SignIn()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Already have an account ? ", style: TextStyle(
                        color: Color(0xFF8F8F9E),
                        fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),),
                    Text("Sign In", style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Poppins',
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 11),
              AppButton(label: "Sign Up", onPressed: onSignUpPress)

            ],
          )
      ),
    );
  }
  void onSignUpPress(){

  }
}