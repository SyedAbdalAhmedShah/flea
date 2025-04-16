import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WavyFleaText extends StatelessWidget {
  const WavyFleaText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildLetter('F', -0.1),
          _buildLetter('L', 0.05),
          _buildLetter('E', -0.05),
          _buildLetter('A', 0.1),
        ],
      ),
    );
  }

  Widget _buildLetter(String char, double angle) {
    return Transform.rotate(
      angle: angle,
      child: Text(
        char,
        style: TextStyle(
          fontSize: 64.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }
}
