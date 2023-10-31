import 'package:flutter/material.dart';
import 'package:pregnancypal/provider/theme_provide.dart';
import 'package:pregnancypal/style/app_style.dart';
import 'package:provider/provider.dart';
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
      trailing: Consumer<ThemeProvider>(
        builder: (context, provider, child) {
          return DropdownButton(
              icon: provider.currentTheme == 'dark'
                  ? Image.asset(
                      AppStyle.light,
                      width: 30,
                      height: 30,
                    )
                  : provider.currentTheme == 'light'
                      ? Image.asset(
                          AppStyle.dark,
                          width: 30,
                          height: 30,
                        )
                      : Image.asset(
                          AppStyle.light,
                          width: 30,
                          height: 30,
                        ),
              underline: Container(),
              items: [
                DropdownMenuItem<String>(
                    value: 'dark',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Dark'),
                        Image.asset(
                          AppStyle.dark,
                          width: 30,
                          height: 30,
                        ),
                      ],
                    )),
                DropdownMenuItem<String>(
                    value: 'light',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Light'),
                        Image.asset(
                          AppStyle.light,
                          width: 30,
                          height: 30,
                        ),
                      ],
                    )),
                DropdownMenuItem<String>(
                    value: 'system',
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('System'),
                        Image.asset(
                          AppStyle.system,
                          width: 30,
                          height: 30,
                        ),
                      ],
                    )),
              ],
              onChanged: (String? value) {
                provider.toggleTheme(value ?? 'system');
              });
        },
      ),
    );
  }
}
