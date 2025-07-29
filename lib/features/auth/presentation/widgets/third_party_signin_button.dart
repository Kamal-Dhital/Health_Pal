import 'package:flutter/material.dart';

class ThirdPartySigninButton extends StatelessWidget {
  final String labeltext;
  final String sourceFile;
  const ThirdPartySigninButton({
    super.key,
    required this.labeltext,
    required this.sourceFile,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              foregroundColor: Color.fromRGBO(24, 42, 58, 1),
              side: BorderSide(
                color: Color.fromRGBO(229, 231, 235, 1),
                width: 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(sourceFile, height: 20, width: 20),
                  SizedBox(width: 8),
                  Text(
                    labeltext,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
