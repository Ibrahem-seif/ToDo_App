import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';
import 'package:todoo_app/core/utils/text_styles.dart';

class TodoItem extends StatelessWidget {
  TodoItem({super.key});
  Color lastslidableColor = ColorsManager.green;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lastslidableColor,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Slidable(
        startActionPane: ActionPane(
          motion: const BehindMotion(),
          children: [
            SlidableAction(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                onPressed: (context) {},
                icon: Icons.delete,
                label: 'Delete',
                backgroundColor: ColorsManager.red),
            SlidableAction(
              onPressed: (context) {},
              icon: Icons.edit,
              label: 'Edit',
              backgroundColor: lastslidableColor,
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 90,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const VerticalDivider(
                thickness: 4,
                color: ColorsManager.blue,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Task Title',
                    style: DarkTextStyles.taskTitle,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Task Details',
                    style: DarkTextStyles.taskDetails,
                  )
                ],
              ),
              const Spacer(),
              Container(
                width: 60,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsManager.blue,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.check),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
