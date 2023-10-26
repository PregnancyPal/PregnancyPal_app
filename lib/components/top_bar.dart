import 'package:flutter/material.dart';
import 'package:pregnancypal/style/app_style.dart';
// import 'package:pregnancypal/style/app_style.dart';

class TopBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final String trailingImageAssetPath;

  const TopBar({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.trailingImageAssetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 7),
        child: Text(title),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontWeight: FontWeight.w700),
      ),
      trailing: GestureDetector(
        child: Container(
          width: 48.0,
          height: 48.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppStyle.dark),
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeat,
            ),
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
          ),
        ),
      ),
    );
  }
}
