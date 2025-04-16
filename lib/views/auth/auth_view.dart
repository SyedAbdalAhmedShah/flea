import 'package:flea/components/wavy_flea_text.dart';
import 'package:flea/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WavyFleaText(),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
