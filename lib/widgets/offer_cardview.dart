import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/colors/App_colors.dart';
import '../utils/responsive.dart';

class OfferCardView extends StatefulWidget {
  final String offers;
  final String plantType;
  final VoidCallback onTap;
  const OfferCardView({
    super.key,
    required this.offers,
    required this.plantType,
    required this.onTap,
  });

  @override
  State<OfferCardView> createState() => _OfferCardViewState();
}

class _OfferCardViewState extends State<OfferCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.height(context, 26),
      width: double.infinity,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage("assets/images/offers.jpeg"), // your image
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.6), Colors.transparent],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// for the card Text
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.backgroundLight,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                " Limited time!  ",
                style: GoogleFonts.abhayaLibre(color: AppColors.textPrimary),
              ),
            ),
            SizedBox(height: Responsive.height(context, 0.9)),
            Text(
              "Get Special Offer",
              style: GoogleFonts.abhayaLibre(
                color: Colors.white,
                fontSize: Responsive.fontSize(context, 23),
                fontWeight: FontWeight.bold,
              ),
            ),

            /// for the offer text spain
            Row(
              children: [
                Text(
                  'Up to',
                  style: GoogleFonts.abhayaLibre(
                    fontSize: Responsive.fontSize(context, 25),
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: Responsive.width(context, 3)),
                Text(
                  '${widget.offers}%',
                  style: GoogleFonts.abhayaLibre(
                    fontSize: Responsive.fontSize(context, 45),
                    color: AppColors.successGreen,
                  ),
                ),
              ],
            ),


            /// for the plant type and claim button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.plantType} | T&C Applied",
                  style: GoogleFonts.abhayaLibre(
                    fontSize: Responsive.fontSize(context,13),
                    color: AppColors.backgroundLight,
                  ),
                ),

                ElevatedButton(onPressed: widget.onTap, child: Text("Claim")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
