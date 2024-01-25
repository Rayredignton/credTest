import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/gen/assets.gen.dart';
import 'package:test/widgets/colors.dart';
import 'package:test/widgets/spacing.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      color: CredpalColors.appBarColor, // Customize the color as needed
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          YMargin(70),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                        'Pay later',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontFamily: "Avenir",
                          color: CredpalColors.textolor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'everywhere',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontFamily: "Avenir",
                          color: CredpalColors.textolor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Assets.icons.caution.svg(),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Shopping limit: ₦0',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: "Avenir",
                      color: CredpalColors.textolor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  YMargin(10),
                  Container(
                    decoration: const BoxDecoration(
                        color: CredpalColors.primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.w),
                      child: Text(
                        'Activate Credit',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: "Avenir",
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
