import 'package:botanix/core/colors/App_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantCard extends StatefulWidget {
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
  State<PlantCard> createState() => _PlantCardState();
}

class _PlantCardState extends State<PlantCard> {
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap, // Card tap = Detail Screen
      child: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            /// Card Background
            Container(
              width: 260,
              height: 330,
              padding: const EdgeInsets.fromLTRB(16, 70, 16, 16),
              decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),

                  /// Title
                  Text(
                    widget.tittle.isNotEmpty ? widget.tittle : "No Title",
                    maxLines: 1,
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 8),

                  /// Description
                  Text(
                    widget.desc.isNotEmpty ? widget.desc : "No Description",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(color: Colors.white70),
                  ),

                  const Spacer(), // Keeps bottom fixed
                  /// Size + Price Bottom Fixed
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.plantSize.isNotEmpty
                            ? widget.plantSize
                            : "Medium",
                        style: GoogleFonts.roboto(color: Colors.white),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.bottomNavDark,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "₹ ${widget.prince}",
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
              child: Image.asset(
                widget.image,
                height: 180,
                fit: BoxFit.contain,
              ),
            ),

            /// Favourite Button (Separate Tap)
            Positioned(
              top: 15,
              right: 15,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isLike = !isLike;
                  });
                },
                behavior: HitTestBehavior.opaque,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: isLike
                      ? ImageIcon(
                          const AssetImage('assets/icons/heart_filled.png'),
                          color: AppColors.accentGreen,
                        )
                      : ImageIcon(
                          const AssetImage('assets/icons/heart.png'),
                          color: AppColors.accentGreen,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
