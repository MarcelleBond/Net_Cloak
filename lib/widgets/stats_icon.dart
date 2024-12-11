import 'package:flutter/material.dart';

class StatsIcon extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget icon;
  const StatsIcon({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        const SizedBox(height: 7),
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 7),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.labelSmall,
        )
      ],
    );
  }
}
