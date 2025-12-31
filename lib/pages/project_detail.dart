import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';

class ProjectDetail extends StatelessWidget {
  final String projectTitle;
  final String projectSubtitle;
  final String overview;
  final List<String> keyFeatures;
  final List<String> technologiesUsed;
  final List<String> myRole;
  final String outcome;

  const ProjectDetail({
    Key? key,
    required this.projectTitle,
    required this.projectSubtitle,
    required this.overview,
    required this.keyFeatures,
    required this.technologiesUsed,
    required this.myRole,
    required this.outcome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return ResponsiveWrapper(
              maxWidth: width,
              minWidth: width,
              defaultScale: false,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 40.0,
                  horizontal: constraints.maxWidth > 720.0 ? 0 : 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Back button
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: kPrimaryColor,
                              size: 24.0,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              "Back",
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),

                    // Project Title
                    Text(
                      projectTitle,
                      style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 15.0),

                    // Project Subtitle
                    Text(
                      projectSubtitle,
                      style: GoogleFonts.oswald(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        height: 1.3,
                        fontSize: 35.0,
                      ),
                    ),
                    SizedBox(height: 30.0),

                    // Project Overview
                    _buildSection("Project Overview", overview),
                    SizedBox(height: 40.0),

                    // Key Features
                    _buildBulletSection("Key Features", keyFeatures),
                    SizedBox(height: 40.0),

                    // Technologies Used
                    _buildBulletSection("Technologies Used", technologiesUsed),
                    SizedBox(height: 40.0),

                    // My Role
                    _buildBulletSection("My Role", myRole),
                    SizedBox(height: 40.0),

                    // Outcome
                    _buildSection("Outcome", outcome),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 22.0,
          ),
        ),
        SizedBox(height: 12.0),
        Text(
          content,
          style: TextStyle(
            color: kCaptionColor,
            height: 1.6,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }

  Widget _buildBulletSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 22.0,
          ),
        ),
        SizedBox(height: 12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items
              .map(
                (item) => Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 6.0, right: 12.0),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          item,
                          style: TextStyle(
                            color: kCaptionColor,
                            height: 1.6,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
