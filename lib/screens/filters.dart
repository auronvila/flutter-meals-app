import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/filters_provider.dart';

class FiltersScreen extends ConsumerWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   final activeFilters = ref.watch(filtersProvider);
    
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeColor: Theme.of(context).colorScheme.tertiary,
            subtitle: Text(
              "Only include gluten-free meals.",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            value: activeFilters[Filter.glutenFree]!,
            onChanged: (newValue) {
              ref.read(filtersProvider.notifier).setFilter(Filter.glutenFree, newValue);
            },
            title: Text(
              "Gluten-free",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
          SwitchListTile(
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeColor: Theme.of(context).colorScheme.tertiary,
            subtitle: Text(
              "Only include lactose free meals.",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            value:  activeFilters[Filter.lactoseFree]!,
            onChanged: (newValue) {
              ref.read(filtersProvider.notifier).setFilter(Filter.lactoseFree, newValue);
            },
            title: Text(
              "Lactose-free",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
          SwitchListTile(
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeColor: Theme.of(context).colorScheme.tertiary,
            subtitle: Text(
              "Only include vegetarian meals.",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            value: activeFilters[Filter.vegetarian]!,
            onChanged: (newValue) {
              ref.read(filtersProvider.notifier).setFilter(Filter.vegetarian, newValue);
            },
            title: Text(
              "Vegetarian",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
          SwitchListTile(
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
            activeColor: Theme.of(context).colorScheme.tertiary,
            subtitle: Text(
              "Only include vegan meals.",
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            value: activeFilters[Filter.vegan]!,
            onChanged: (newValue) {
              ref.read(filtersProvider.notifier).setFilter(Filter.vegan, newValue);
            },
            title: Text(
              "Vegan",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
          ),
        ],
      ),
    );
  }
}