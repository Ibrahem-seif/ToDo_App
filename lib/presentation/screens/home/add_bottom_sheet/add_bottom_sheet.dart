import 'package:flutter/material.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';
import 'package:todoo_app/core/utils/date_ex/date_ex.dart';
import 'package:todoo_app/core/utils/text_styles.dart';

class AddBottomSheet extends StatefulWidget {
  AddBottomSheet({super.key});
  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();

  static void show(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: AddBottomSheet(),
      ),
    );
  }
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  DateTime currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      height: size.height * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Add Task',
            style: DarkTextStyles.settingsLable,
            textAlign: TextAlign.center,
          ),
          TextFormField(
            decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ColorsManager.gray),
              ),
              hintText: 'Enter your Task Title',
              hintStyle: DarkTextStyles.hint,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          TextFormField(
            decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ColorsManager.gray),
              ),
              hintText: 'Enter your Task Details',
              hintStyle: DarkTextStyles.hint,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            'Select Date',
            style: DarkTextStyles.hint,
          ),
          Center(
            child: InkWell(
              child: Text(
                currentDate.toFormatedDate,
                style: DarkTextStyles.hint,
              ),
              onTap: () {
                showTaskDate(context);
              },
            ),
          ),
          Center(
            child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(
                  Icons.check,
                  color: ColorsManager.white,
                  size: 30,
                )),
          )
        ],
      ),
    );
  }

  void showTaskDate(context) async {
    currentDate = await showDatePicker(
          context: context,
          firstDate: DateTime.now(),
          initialDate: currentDate,
          lastDate: DateTime.now().add(
            const Duration(days: 365),
          ),
        ) ??
        currentDate;
    setState(() {});
  }
}
