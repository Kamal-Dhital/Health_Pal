import 'package:flutter/material.dart';
import 'package:health_pal/features/auth/presentation/screens/login.dart';
import 'package:health_pal/features/auth/presentation/widgets/text_field_with_icon.dart';
import 'package:health_pal/shared/presentation/widgets/custom_button.dart';

class SetNewPassword extends StatelessWidget {
  const SetNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Color.fromRGBO(28, 42, 58, 1),
                  size: 24,
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 500,
                child: Column(
                  children: [
                    Spacer(),
                    Image.asset("assets/images/healthpal_logo_black.png"),
                    Spacer(),
                    Text(
                      "Create New Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Your new password must be different form previously used password",
                    ),
                    Spacer(),
                    TextFieldWithIcon(hintText: "Password", icon: Icons.lock),
                    SizedBox(height: 16),
                    TextFieldWithIcon(
                      hintText: "Confirm Password",
                      icon: Icons.lock,
                    ),
                    Spacer(),
                    CustomButton(
                      text: "Reset",
                      backgroundColor: Color.fromRGBO(28, 42, 58, 1),
                      textColor: Color.fromRGBO(255, 255, 255, 1),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
