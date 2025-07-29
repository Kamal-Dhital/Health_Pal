import 'package:flutter/material.dart';
import 'package:health_pal/features/auth/presentation/screens/set_new_password.dart';
import 'package:health_pal/features/auth/presentation/widgets/verification_code_field.dart';
import 'package:health_pal/shared/presentation/widgets/custom_button.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                height: 450,
                child: Column(
                  children: [
                    Spacer(),
                    Image.asset("assets/images/healthpal_logo_black.png"),
                    Spacer(),
                    Text(
                      "Verify Code",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      "Enter the the code we just sent you on your registered Email",
                    ),
                    Spacer(),
                    VerificationCodeField(),
                    Spacer(),
                    CustomButton(
                      text: "Verify",
                      backgroundColor: Color.fromRGBO(28, 42, 58, 1),
                      textColor: Color.fromRGBO(255, 255, 255, 1),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SetNewPassword(),
                          ),
                        );
                      },
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't get the code?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 4),
                        GestureDetector(
                          child: Text(
                            "Resend",
                            style: TextStyle(
                              color: Color.fromRGBO(52, 97, 253, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          onTap: () {
                            print("Resend Button Pressed");
                          },
                        ),
                      ],
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
