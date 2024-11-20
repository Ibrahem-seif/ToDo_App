import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';
import 'package:todoo_app/core/utils/text_styles.dart';
import 'package:todoo_app/presentation/screens/home/tabs/settings_tab/widgets/settings_item_widget.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: ColorsManager.blue,
          height: 60.h,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Language',
                style: DarkTextStyles.settingsLable,
              ),
              SettingsItemWidget(
                item1: 'English',
                item2: 'Arabic',
              ),
              Text(
                'Mode',
                style: DarkTextStyles.settingsLable,
              ),
              SettingsItemWidget(
                item1: 'Light',
                item2: 'Dark',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
