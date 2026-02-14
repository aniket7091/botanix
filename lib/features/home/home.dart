import 'package:botanix/core/colors/App_colors.dart';
import 'package:botanix/core/strings/app_string.dart';
import 'package:botanix/utils/responsive.dart';
import 'package:botanix/widgets/custom_appbar.dart';
import 'package:botanix/widgets/offer_cardview.dart';
import 'package:botanix/widgets/plant_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  /// for the offer card
                  OfferCardView(
                    onTap: () {},
                    offers: '50',
                    plantType: "All Indoor Plants Available",
                  ),
                  SizedBox(height: Responsive.height(context, 2)),

                  /// for the recommendation field
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Recommended For You",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: Responsive.width(context, 3)),
                      Text(
                        "See All",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: AppColors.accentGreen,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  /// importing plant card
                  SizedBox(
                    height: 420, // card height + image overflow
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (_, __) => SizedBox(width: 20),
                      itemBuilder: (_, index) {
                        return PlantCard(
                          onTap: () {},
                          image: "assets/images/plant.png",
                          tittle: 'Premium Indoor Foliage Plant in Ceramic Pot',
                          desc: AppString.plantDecs,
                          plantSize: "Medium",
                          prince: "420",
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
