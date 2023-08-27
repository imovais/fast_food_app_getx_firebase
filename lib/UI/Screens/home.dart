// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fast_food_app_getx_firebase/Controller/home_controller.dart';
import 'package:fast_food_app_getx_firebase/Utils/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/appbar.dart';
import '../Widgets/card_coursel.dart';
import '../Widgets/drawer.dart';
import '../Widgets/explore_section.dart';
import '../Widgets/title_text_redline.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Mydrawer(),
          appBar: myappbar(),
          body: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(mytext: "What's New"),
                CardCarousel(
                  c: c,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //reorder button
                      Container(
                        alignment: Alignment.center,
                        //margin: EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        height: 40,
                        color: Appcolor.primary,
                        child: Text(
                          'Reorder',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Appcolor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitleText(
                            mytext: "Explore Menu",
                            pd: 0.0,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'ViewAll',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Appcolor.black),
                            ),
                          )
                        ],
                      ),

                      //explore section
                      ExploreSection()
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
