import 'package:flutter/material.dart';
import 'package:pregnancypal/components/top_bar.dart';
import 'package:pregnancypal/size_config.dart';
import 'package:pregnancypal/style/app_style.dart';

class Appointments extends StatelessWidget {
  const Appointments({super.key});
 Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal! * 7,
          vertical: SizeConfig.blockSizeVertical! * 7,
        ),
        child: const Column(
          children: [
            TopBar(
              title: '🗓 Hello!',
              subtitle: 'Upcoming Appointments',
              trailingImageAssetPath: AppStyle.image1,
            ),
          ],
        ),
      ),
    );
  }

}