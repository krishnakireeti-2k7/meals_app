import 'package:flutter/material.dart';

class CustomSwitchlist extends StatelessWidget {
  const CustomSwitchlist({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
    required this.subtitle,
  });
  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SwitchListTile(
      value: value, 
      onChanged: onChanged,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      activeColor: Theme.of(context).colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 24, right: 32),
    ); 
  }
}
