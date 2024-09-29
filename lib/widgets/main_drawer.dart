import 'package:flutter/material.dart';

import '../models/drawer_content.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key,required this.onSelectScreen});
  
  final void Function(String identifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    List<DrawerContent> drawerData = [
      DrawerContent(
        title: Text(
          "Meals",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).colorScheme.onSurface, fontSize: 24),
        ),
        onPress: () {
          onSelectScreen('meals');
        },
        leading: Icon(
          Icons.restaurant,
          size: 26,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      DrawerContent(
        title: Text(
          "Filters",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).colorScheme.onSurface, fontSize: 24),
        ),
        onPress: () {
          onSelectScreen('filters');
        },
        leading: Icon(
          Icons.settings,
          size: 26,
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
    ];

    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.primaryContainer,
                Theme.of(context).colorScheme.primaryContainer.withOpacity(0.6)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  Icons.fastfood,
                  size: 48,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  width: 18,
                ),
                Text(
                  "Cooking Up!",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
          ),
          for (var value in drawerData)
            ListTile(
              leading: value.leading,
              onTap: value.onPress,
              title: value.title,
            )
        ],
      ),
    );
  }
}
