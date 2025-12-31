import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/pages/project_detail.dart';


class SynculanAd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Container(
              child: Flex(
                direction: constraints.maxWidth > 720
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Image.asset(
                      "assets/synculan.png",
                      // Set width for image on smaller screen
                      width: constraints.maxWidth > 720.0 ? null : 350.0,
                    ),
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SyncULan",
                          style: GoogleFonts.oswald(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 26.0,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Advanced\nSocial Networking App",
                          style: GoogleFonts.oswald(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                            fontSize: 35.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Developed a feature-rich social media-style mobile application using Flutter, focused on real-time communication, user interaction, and performance. The app was designed to deliver a smooth and engaging user experience similar to modern social platforms.",
                          style: TextStyle(
                            color: kCaptionColor,
                            height: 1.5,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 48.0,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 28.0,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ProjectDetail(
                                          projectTitle: "SyncULan",
                                          projectSubtitle: "Advanced\nSocial Networking App",
                                          overview: "Developed a feature-rich social media–style mobile application using Flutter, focused on real-time communication, user interaction, and performance. The app was designed to deliver a smooth and engaging user experience similar to modern social platforms.",
                                          keyFeatures: [
                                            "User authentication and secure account management",
                                            "Real-time chat and notifications using Socket.IO",
                                            "Audio and video calling functionality implemented with WebRTC",
                                            "Post creation, user interactions (like, comment, share), and live updates",
                                            "Responsive and pixel-perfect UI converted from Figma designs",
                                            "Optimized state management for smooth performance across devices",
                                          ],
                                          technologiesUsed: [
                                            "Flutter & Dart",
                                            "Socket.IO for real-time data communication",
                                            "WebRTC for audio/video calling",
                                            "RESTful APIs for backend integration",
                                            "Git & GitHub for version control and collaboration",
                                          ],
                                          myRole: [
                                            "Built and maintained core application features using Flutter",
                                            "Integrated real-time communication and calling functionalities",
                                            "Transformed UI/UX designs into high-quality, responsive interfaces",
                                            "Collaborated with backend developers to ensure seamless API integration",
                                            "Debugged, optimized, and improved overall app performance",
                                          ],
                                          outcome: "The application successfully delivered a scalable, real-time social experience, enhancing user engagement and communication. It strengthened my expertise in real-time systems, Flutter architecture, and production-level mobile app development.",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "EXPLORE MORE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            // MouseRegion(
                            //   cursor: SystemMouseCursors.click,
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(8.0),
                            //       border: Border.all(
                            //         color: kPrimaryColor,
                            //       ),
                            //     ),
                            //     height: 48.0,
                            //     padding: EdgeInsets.symmetric(horizontal: 28.0),
                            //     child: TextButton(
                            //       onPressed: () {},
                            //       child: Center(
                            //         child: Text(
                            //           "NEXT APP",
                            //           style: TextStyle(
                            //             color: kPrimaryColor,
                            //             fontSize: 13.0,
                            //             fontWeight: FontWeight.bold,
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
