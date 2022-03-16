import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/product.dart';
import 'package:stylish/screens/home/components/categories.dart';
import 'package:stylish/screens/home/components/new_arrivals.dart';
import 'package:stylish/screens/home/components/popular.dart';
import 'package:stylish/screens/home/components/product_card.dart';
import 'package:stylish/screens/home/components/search_form.dart';
import 'package:stylish/screens/home/components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/Notification.svg"))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
              ),
              const Text(
                "best Outfits for you",
                style: TextStyle(fontSize: 18),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: defaultPadding,
                ),
                child: SearchForm(),
              ),
              const Categories(),
              const SizedBox(
                height: defaultPadding,
              ),
              const NewArrivals(),
              const SizedBox(
                height: defaultPadding,
              ),
              const Popular(),
            ],
          ),
        ),
      ),
    );
  }
}
