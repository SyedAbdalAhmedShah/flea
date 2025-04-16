import 'package:flea/components/wavy_flea_text.dart';
import 'package:flea/constants/app_colors.dart';
import 'package:flea/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WavyFleaText(),
          Gap(1.h),

          Container(
            width: 200.w,
            height: 60.h,
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(100.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                Utils.auths.length,
                (index) => GestureDetector(
                  onTap:
                      () => setState(() {
                        selectedIndex = index;
                      }),
                  child: AnimatedContainer(
                    duration: Durations.extralong4,
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                      horizontal: 18.w,
                    ),
                    decoration: BoxDecoration(
                      color:
                          selectedIndex == index
                              ? AppColors.primaryColor
                              : Colors.transparent,
                      borderRadius:
                          selectedIndex == index
                              ? BorderRadius.circular(16.r)
                              : BorderRadius.zero,
                    ),
                    child: Text(
                      Utils.auths[index],
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color:
                            selectedIndex == index
                                ? AppColors.bgColor
                                : Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
