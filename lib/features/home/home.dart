import 'package:botanix/widgets/custom_appbar.dart';
import 'package:botanix/widgets/offer_cardview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                /// for the offer card
                OfferCardView(
                  onTap: () {},
                  offers: '50',
                  plantType: "All Indoor Plants Available",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
