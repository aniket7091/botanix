import 'package:botanix/core/colors/App_colors.dart';
import 'package:botanix/utils/responsive.dart';
import 'package:botanix/widgets/custom_appbar.dart';
import 'package:botanix/widgets/offer_cardview.dart';
import 'package:botanix/widgets/plant_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../product_Details/models/procuct_models.dart';
import '../product_Details/product_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


///dummy data for testing
  List<PlantModel> plantList = [
    PlantModel(
      image: "assets/images/plant.png",
      title: "Premium Indoor Foliage Plant",
      desc: "Bring freshness and natural beauty to your home with this elegant indoor decorative plant. Planted in a stylish ceramic pot, this lush green plant enhances your living space while helping create a calm and refreshing environment. Perfect for homes, offices, and gifting, it requires minimal maintenance and thrives indoors with indirect sunlight.",
      size: "Medium",
      price: "430",
    ),
    PlantModel(
      image: "assets/images/tree3.png",
      title: "Bonsai Plant",
      desc: "Bring freshness and natural beauty to your home with this elegant indoor decorative plant. Planted in a stylish ceramic pot, this lush green plant enhances your living space while helping create a calm and refreshing environment. Perfect for homes, offices, and gifting, it requires minimal maintenance and thrives indoors with indirect sunlight.",
      size: "Small",
      price: "450",
    ),
  ];

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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SizedBox(
                      height: 420,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: plantList.length,
                        separatorBuilder: (_, __) => const SizedBox(width: 20),
                        itemBuilder: (_, index) {
                          final plant = plantList[index];

                          return PlantCard(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => PlantDetailScreen(plant: plant),
                                ),
                              );
                            },
                            image: plant.image ?? "",
                            tittle: plant.title ?? "No Title",
                            desc: plant.desc ?? "No description",
                            plantSize: plant.size ?? "Medium",
                            prince: (plant.price ?? 0).toString(),

                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
