import 'package:flutter/material.dart';
import 'package:test_homsa/misc/colors.dart';
import 'package:test_homsa/widgets/app_button.dart';
import 'package:test_homsa/widgets/app_large_text.dart';
import 'package:test_homsa/widgets/app_text.dart';
import 'package:test_homsa/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/HomePage.png"),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                left: 10,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 200,
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                              text: "Pyramids",
                              color: Colors.black54.withOpacity(0.8)),
                          AppLargeText(
                              text: "\$ 200", color: AppColors.mainColor)
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          AppText(
                            text: "Egypt, Gize",
                            color: AppColors.textColor1,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Wrap(
                              children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: index < gottenStars
                                    ? AppColors.starColor1
                                    : AppColors.textColor2);
                          })),
                          SizedBox(
                            width: 3,
                          ),
                          AppText(text: "(4.6)", color: AppColors.textColor2)
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      AppLargeText(
                        text: "people",
                        color: Colors.black.withOpacity(0.8),
                        size: 15,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      AppText(
                        text: "Number of people for the visit",
                        color: AppColors.maintextColor,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Wrap(
                          children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButtons(
                              size: 50,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              backgroundColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              borderColor: selectedIndex == index
                                  ? Colors.black
                                  : AppColors.buttonBackground,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      })),
                      SizedBox(
                        height: 10,
                      ),
                      AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 15,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      AppText(
                        text:
                            "You must visit the pyramids. its one of the seven wonders of the world!",
                        color: AppColors.maintextColor,
                      ),
                    ],
                  ),
                )),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  AppButtons(
                    size: 50,
                    color: AppColors.textColor2,
                    backgroundColor: Colors.white,
                    borderColor: AppColors.textColor1,
                    isIcon: true,
                    icon: Icons.favorite_border,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
