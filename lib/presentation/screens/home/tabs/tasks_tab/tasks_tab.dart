import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';
import 'package:todoo_app/core/utils/date_ex/date_ex.dart';
import 'package:todoo_app/core/utils/text_styles.dart';
import 'package:todoo_app/presentation/screens/home/tabs/tasks_tab/todo_item/todo_item.dart';

class TasksTab extends StatefulWidget {
  TasksTab({super.key});

  @override
  State<TasksTab> createState() => _TasksTabState();

  buildCalender() {}
}

class _TasksTabState extends State<TasksTab> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: ColorsManager.blue,
              height: 60.h,
            ),
            buildCalender(),
          ],
        ),
        TodoItem(),
      ],
    );
  }

  Widget buildCalender() {
    return EasyInfiniteDateTimeLine(
      showTimelineHeader: false,
      firstDate: DateTime.now().subtract(
        const Duration(days: 365),
      ),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
      focusDate: selectedDate,
      itemBuilder: (context, date, isSelected, onTap) {
        return InkResponse(
          onTap: onTap,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            color: Theme.of(context).colorScheme.onSecondary,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  date.getDayName,
                  style: DarkTextStyles.calnderText.copyWith(
                    color: isSelected
                        ? ColorsManager.blue
                        : DarkTextStyles.calnderText.color,
                  ),
                ),
                Text(
                  date.day.toString(),
                  style: DarkTextStyles.calnderText.copyWith(
                    color: isSelected
                        ? ColorsManager.blue
                        : DarkTextStyles.calnderText.color,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      onDateChange: (date) {
        setState(() {
          selectedDate = date;
        });
      },
    );
  }
}
