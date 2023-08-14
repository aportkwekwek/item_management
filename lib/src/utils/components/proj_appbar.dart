import 'package:flutter/material.dart';

class ProjectAppBar extends StatelessWidget {
  ProjectAppBar(
      {this.shape = const CircularNotchedRectangle(),
      this.fabLocation = FloatingActionButtonLocation.centerFloat});

  final NotchedShape? shape;
  final FloatingActionButtonLocation fabLocation;

  static final List<FloatingActionButtonLocation> centerLocations =
      <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Theme.of(context).colorScheme.onSecondary,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.warehouse_outlined),
              tooltip: 'Inventory',
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.inventory_2_outlined),
              tooltip: 'Item Management',
            ),
            const Spacer(),
            const Spacer(),
            IconButton(
              tooltip: 'Task',
              icon: const Icon(Icons.today_outlined),
              onPressed: () {},
            ),
            const Spacer(),
            IconButton(
              tooltip: 'Profile',
              icon: const Icon(Icons.person_2_outlined),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
