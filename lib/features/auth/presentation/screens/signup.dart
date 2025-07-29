import 'package:flutter/material.dart';
import 'package:health_pal/features/auth/presentation/screens/login.dart';
import 'package:health_pal/features/auth/presentation/widgets/text_field_with_icon.dart';
import 'package:health_pal/features/auth/presentation/widgets/third_party_signin_button.dart';
import 'package:health_pal/features/home/presentation/screens/home.dart';
import 'package:health_pal/shared/presentation/widgets/custom_button.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Spacer(),
              Image.asset("assets/images/healthpal_logo_black.png"),
              // SizedBox(height: 32),
              Spacer(),
              Text(
                "Create Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                "We are here to help you.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
              Spacer(),
              TextFieldWithIcon(
                hintText: 'Your Name',
                icon: Icons.person,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              TextFieldWithIcon(
                hintText: 'Your Email',
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
              ),
              SizedBox(height: 16),
              TextFieldWithIcon(
                hintText: 'Password',
                icon: Icons.lock_outline,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {},
              ),
              Spacer(),
              CustomButton(
                text: "Create Account",
                backgroundColor: Color.fromRGBO(28, 42, 58, 1),
                textColor: Color.fromRGBO(255, 255, 255, 1),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 2, color: Colors.grey)),
                  SizedBox(width: 16),
                  Text("or", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 16),
                  Expanded(child: Divider(thickness: 2, color: Colors.grey)),
                ],
              ),
              Spacer(),
              ThirdPartySigninButton(
                labeltext: "Continue with Google",
                sourceFile:
                    "http://pngimg.com/uploads/google/google_PNG19635.png",
              ),
              ThirdPartySigninButton(
                labeltext: "Continue with Facebook",
                sourceFile:
                    "https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19750.png",
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
