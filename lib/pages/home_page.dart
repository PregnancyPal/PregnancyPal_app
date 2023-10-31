// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pregnancypal/components/top_bar.dart';
import 'package:pregnancypal/pages/Calculator/calculator.dart';
import 'package:pregnancypal/pages/ads/get_best_medical_service.dart';
import 'package:pregnancypal/pages/appointments/upcoming_appointments.dart';
import 'package:pregnancypal/style/app_style.dart';
// import '../data/data.dart';
import '../size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 7,
            ),
            child: Column(
              children: [
                // User Info Area .
                TopBar(
                    title: "👋 Hello!",
                    subtitle: "PregnancyPal",
                    trailingImageAssetPath: AppStyle.dark),
                // SearchMedical Area.
                // SearchMedical(),
                // Services Area .
                SizedBox(height: 10),
                Services(),

                // GetBestMedicalService
                GetBestMedicalService(),
              ],
            ),
          ),
          // Upcoming Appointments
          const UpcomingAppointments()
        ],
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Services",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CupertinoButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CalculateDate();
                }));
              },
              padding: EdgeInsets.zero,
              child: Container(
                width: SizeConfig.blockSizeHorizontal! * 17,
                height: SizeConfig.blockSizeHorizontal! * 17,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(250, 166, 49, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppStyle.firstIcon,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: Container(
                width: SizeConfig.blockSizeHorizontal! * 17,
                height: SizeConfig.blockSizeHorizontal! * 17,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 71, 8, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: SvgPicture.asset(AppStyle.secondIcon,
                      color: Colors.white),
                ),
              ),
            ),
            CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              child: Container(
                width: SizeConfig.blockSizeHorizontal! * 17,
                height: SizeConfig.blockSizeHorizontal! * 17,
                decoration: BoxDecoration(
                  color: Color(0xff1C6BA4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: SvgPicture.asset(AppStyle.thirdIcon),
                ),
              ),
            ),
            CupertinoButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CalculateDate();
                }));
              },
              padding: EdgeInsets.zero,
              child: Container(
                width: SizeConfig.blockSizeHorizontal! * 17,
                height: SizeConfig.blockSizeHorizontal! * 17,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(186, 212, 170, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: SvgPicture.asset(AppStyle.forthIcon),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
