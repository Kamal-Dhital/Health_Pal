import 'package:flutter/material.dart';
import 'package:health_pal/features/onboarding/presentation/screens/onboarding_2.dart';

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Onboarding2()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final itemWidth = screenWidth * 0.40;
    final itemHeight = screenHeight * 0.40;
    final gap = 16.0;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              left: (screenWidth - itemWidth) / 2 - itemWidth - gap,
              top: (screenHeight - itemHeight) / 2 - itemHeight - gap,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildGridItem(const Color(0xFFB39DDB)),
                      ),
                      SizedBox(width: gap),
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildDoctorItem(
                          'assets/images/onboarding_doctor_1.png',
                        ),
                      ),
                      SizedBox(width: gap),
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildGridItem(const Color(0xFFF8BBD9)),
                      ),
                    ],
                  ),
                  SizedBox(height: gap),
                  Row(
                    children: [
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildDoctorItem(
                          'assets/images/onboarding_doctor_2.png',
                        ),
                      ),
                      SizedBox(width: gap),
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildCenterItem(),
                      ),
                      SizedBox(width: gap),
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildDoctorItem(
                          'assets/images/onboarding_doctor_3.png',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: gap),
                  Row(
                    children: [
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildGridItem(const Color(0xFFA5D6A7)),
                      ),
                      SizedBox(width: gap),
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildDoctorItem(
                          'assets/images/onboarding_doctor_4.png',
                        ),
                      ),
                      SizedBox(width: gap),
                      SizedBox(
                        width: itemWidth,
                        height: itemHeight,
                        child: _buildGridItem(const Color(0xFF80CBC4)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(Color color) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  Widget _buildDoctorItem(String imagePath) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.person, color: Colors.white, size: 50),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCenterItem() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF2A1B5A),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 92,
            width: 92,
            child: Stack(
              children: [
                Row(
                  children: [
                    SizedBox(width: 8),
                    Image.asset("assets/images/healthpal_logo.png"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
