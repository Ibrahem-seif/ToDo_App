import 'package:flutter/material.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';
import 'package:todoo_app/core/utils/text_styles.dart';

class SettingsItemWidget extends StatefulWidget {
  final String item1;
  final String item2;

  SettingsItemWidget({super.key, required this.item1, required this.item2});

  @override
  State<SettingsItemWidget> createState() => _SettingsItemWidgetState();
}

class _SettingsItemWidgetState extends State<SettingsItemWidget> {
  String? newItem;

  @override
  void initState() {
    super.initState();
    newItem = widget.item1;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: ColorsManager.black,
          border: Border.all(
            color: ColorsManager.blue,
          ),
        ),
        child: Row(
          children: [
            Text(
              newItem!,
              style: DarkTextStyles.settingsItem,
            ),
            const Spacer(),
            DropdownButton<String>(
              borderRadius: BorderRadius.circular(10),
              items: <String>[widget.item1, widget.item2].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (currentItem) {
                setState(() {
                  newItem = currentItem;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
