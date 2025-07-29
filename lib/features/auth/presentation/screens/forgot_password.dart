import 'package:flutter/material.dart';
import 'package:health_pal/features/auth/presentation/screens/otp_verification.dart';
import 'package:health_pal/features/auth/presentation/widgets/text_field_with_icon.dart';
import 'package:health_pal/shared/presentation/widgets/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                height: 400,
                child: Column(
                  children: [
                    Spacer(),
                    Image.asset("assets/images/healthpal_logo_black.png"),
                    Spacer(),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Enter your Email, we will send you a verification code.",
                    ),
                    Spacer(),
                    TextFieldWithIcon(
                      hintText: "Your Email",
                      icon: Icons.email,
                    ),
                    Spacer(),
                    CustomButton(
                      text: "Send Code",
                      backgroundColor: Color.fromRGBO(28, 42, 58, 1),
                      textColor: Color.fromRGBO(255, 255, 255, 1),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpVerification(),
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
