import 'package:botanix/core/colors/App_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/responsive.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Appbar

        /// loaction
        Material(
          elevation: 3,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen[700],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Column(
                children: [
                  SizedBox(height: Responsive.height(context, 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'location',
                            style: GoogleFonts.roboto(
                              fontSize: Responsive.fontSize(context, 14),
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/icons/location.png"),
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: Responsive.width(context, 2)),

                              /// Address text
                              Text(
                                "New York, USA",
                                style: GoogleFonts.roboto(
                                  fontSize: Responsive.fontSize(context, 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      /// notification icon
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.lightGreen,
                              blurRadius: 1,
                              offset: Offset(0.1, 0.1),
                              spreadRadius: 0.5,
                            ),
                          ],
                        ),
                        child: ImageIcon(
                          AssetImage("assets/icons/bell.png"),
                          color: AppColors.backgroundLight,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: Responsive.height(context, 3)),

                  /// search bar
                  SizedBox(
                    height: Responsive.height(context, 6),
                    child: SearchBar(
                      leading: ImageIcon(AssetImage("assets/icons/search.png")),
                      hintText: "Search .....",
                      hintStyle: WidgetStateProperty.all(
                        GoogleFonts.abhayaLibre(
                          fontSize: Responsive.fontSize(context, 18),
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            13,
                          ), // perfect rectangle
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Responsive.height(context, 2)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
