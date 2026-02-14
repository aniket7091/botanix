import 'package:botanix/core/colors/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCard extends StatelessWidget {
  final String tittle;
  final String desc;
  final String plantSize;
  final String prince;
  final String image;
  final VoidCallback onTap;

  const PlantCard({
    super.key,
    required this.tittle,
    required this.desc,
    required this.plantSize,
    required this.prince,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Card Background
          Container(
            width: 260,
            height: 350,
            padding: EdgeInsets.fromLTRB(16, 70, 16, 16),
            decoration: BoxDecoration(
              color: Colors.green.shade300,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100),

                ///plant tittle
                Text(
                  tittle,
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                ),
                SizedBox(height: 8),

                /// plant description
                Text(
                  desc,
                  style: GoogleFonts.roboto(color: Colors.white70),
                  maxLines: 3,
                ),

                SizedBox(height: 15),

                /// plant size
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      plantSize,
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.bottomNavDark,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      ///plant price
                      child: Text(
                        "₹ ${prince}",
                        style: GoogleFonts.roboto(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// Plant Image
          Positioned(
            left: 40,
            top: -30,
            child: Image.asset(image, height: 180, fit: BoxFit.contain),
          ),

          /// Favorite Icon
          Positioned(
            top: 15,
            right: 15,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: GestureDetector(
                onTap: onTap,
                child: ImageIcon(
                  AssetImage('assets/icons/heart.png'),
                  color: AppColors.accentGreen,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
