import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/pages/project_detail.dart';


class SimplyAd extends StatelessWidget {
  // We can use same idea as ios_app_ad.dart and swap children order, let's copy code
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Unity",
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
                          "Tinder-Like Dating Application (Flutter + Firebase)",
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
                          "Unity is a Tinder-style dating mobile application built using Flutter, with a fully serverless backend powered by Firebase. The app focuses on real-time matching, user engagement, and scalable cloud-based architecture without a traditional backend server.",
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
                                          projectTitle: "Unity",
                                          projectSubtitle: "Tinder-Like Dating Application\n(Flutter + Firebase)",
                                          overview: "Unity is a Tinder-style dating mobile application built using Flutter, with a fully serverless backend powered by Firebase. The app focuses on real-time matching, user engagement, and scalable cloud-based architecture without a traditional backend server.",
                                          keyFeatures: [
                                            "Secure user authentication using Firebase Authentication",
                                            "User profile creation with images, bio, and preferences",
                                            "Swipe-based matching system (like / dislike)",
                                            "Real-time match detection when both users like each other",
                                            "Instant real-time chat between matched users",
                                            "Push notifications for matches and new messages",
                                            "Cloud-based data storage and synchronization",
                                          ],
                                          technologiesUsed: [
                                            "Flutter & Dart",
                                            "Firebase (Auth, Firestore, Storage, Cloud Functions, FCM)",
                                            "Real-time listeners for live updates",
                                            "Git & GitHub for version control",
                                          ],
                                          myRole: [
                                            "Designed and implemented the entire Firebase backend architecture",
                                            "Built swipe logic and match algorithms",
                                            "Implemented real-time chat and notification system",
                                            "Integrated Firebase services efficiently for scalability",
                                            "Developed responsive and user-friendly Flutter UI",
                                            "Ensured secure data access using Firebase security rules",
                                          ],
                                          outcome: "Unity delivers a scalable, real-time dating experience similar to modern matchmaking apps. This project strengthened my expertise in Flutter + Firebase full-backend development, real-time systems, and cloud-native mobile application design.",
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
                        ),
                        SizedBox(
                          height: 70.0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Image.asset(
                      "assets/simply.png",
                      // Set width for image on smaller screen
                      width: constraints.maxWidth > 720.0 ? null : 350.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
