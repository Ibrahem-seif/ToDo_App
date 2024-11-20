import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoo_app/core/utils/colors_manager.dart';
import 'package:todoo_app/presentation/screens/home/add_bottom_sheet/add_bottom_sheet.dart';
import 'package:todoo_app/presentation/screens/home/tabs/settings_tab/settings_tab.dart';
import 'package:todoo_app/presentation/screens/home/tabs/tasks_tab/tasks_tab.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  List<Widget> tabs = [
    TasksTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'To Do List',
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildFab(),
      bottomNavigationBar: buildBottomNavBar(),
      body: tabs[selectedIndex],
    );
  }

  Widget buildBottomNavBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
      ),
      child: BottomAppBar(
        notchMargin: 5,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: 'Tasks'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFab() {
    return FloatingActionButton(
      onPressed: () {
        AddBottomSheet.show(context);
      },
      child: const Icon(
        Icons.add,
        color: ColorsManager.white,
      ),
    );
  }
}
