import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/product.dart';
import 'package:stylish/screens/details/details_screen.dart';
import 'package:stylish/screens/home/components/product_card.dart';
import 'package:stylish/screens/home/components/section_title.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          onPress: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => DetailScreen(
                              product: demo_product[index],
                            )),
                      ),
                    );
                  },
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
