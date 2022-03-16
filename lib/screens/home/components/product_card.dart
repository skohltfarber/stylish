import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.onPress,
    required this.image,
    required this.title,
    required this.bgColor,
    required this.price,
  }) : super(key: key);

  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius / 2),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(defaultBorderRadius),
                ),
              ),
              child: Image.asset(
                image,
                height: 132,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: defaultPadding / 4,
                ),
                Text(
                  "\$" + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
