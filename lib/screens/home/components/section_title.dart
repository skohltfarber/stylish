import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
        TextButton(
            onPressed: onPress,
            child: const Text(
              "See All",
              style: TextStyle(
                color: Colors.black54,
              ),
            ))
      ],
    );
  }
}
