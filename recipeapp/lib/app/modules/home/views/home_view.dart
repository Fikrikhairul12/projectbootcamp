import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Flavorite/app/modules/home/widget/home_widget.dart';
import 'package:Flavorite/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4FEEF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Welcome back to \n',
                          style: GoogleFonts.workSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff34A853)
                          )
                        ),
                        TextSpan(
                          text: 'Flavorite \n',
                          style: GoogleFonts.workSans(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff33AE54)
                          )
                        ),
                        TextSpan(
                          text: 'What menu do you want to cook today?',
                          style: GoogleFonts.workSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                          )
                        ),
                      ]
                    )
                  ),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.SETTINGS);
                    },
                    icon: Icon(Icons.settings), iconSize: 40,
                  )
                ],
              ),
              SizedBox(height: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Category', style: GoogleFonts.workSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 130,
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Color(0xffCDCDCD)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Color(0xffF4F4F4),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Breakfast',
                              style: GoogleFonts.workSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            )
                          ),
                        ),
                        SizedBox(width: 32,),
                        SizedBox(
                          width: 130,
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Color(0xffCDCDCD)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Color(0xffF4F4F4),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Lunch',
                              style: GoogleFonts.workSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            )
                          ),
                        ),
                        SizedBox(width: 32,),
                        SizedBox(
                          width: 130,
                          height: 35,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Color(0xffCDCDCD)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Color(0xffF4F4F4),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Diner',
                              style: GoogleFonts.workSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),
                            )
                          ),
                        ),
                      ]
                    )
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Favorite Food',
                    style: GoogleFonts.workSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black
                    )
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecipeCard(
                          title: 'Healthy Taco Salad',
                          subtitle: "with fresh vegetable",
                          imageUrl: "assets/images/fvfood1.png",
                          calories: "120 Kcal",
                          time: "20 Min"
                        ),
                        RecipeCard(
                          title: 'Mushroom Pizza',
                          subtitle: "and Caramelized Onion ",
                          imageUrl: "assets/images/fvfood2.png",
                          calories: "200 Kcal",
                          time: "30 Min"
                        ),
                        RecipeCard(
                          title: 'Chicken Pasta',
                          subtitle: "Dump-and-Bake Buffalo",
                          imageUrl: "assets/images/fvfood3.png",
                          calories: "400 Kcal",
                          time: "30 Min"
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Favorite Drink',
                    style: GoogleFonts.workSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Colors.black
                    )
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecipeCard(
                          title: 'Avocado Juice',
                          subtitle: "with Milk and Sugar",
                          imageUrl: "assets/images/fvdrink1.png",
                          calories: "300 Kcal",
                          time: "20 Min"
                        ),
                        RecipeCard(
                          title: 'Blackberry Strawberry ',
                          subtitle: "Banana Smoothie ",
                          imageUrl: "assets/images/fvdrink2.png",
                          calories: "120 Kcal",
                          time: "10 Min"
                        ),
                        RecipeCard(
                          title: 'Iced Matcha Latte',
                          subtitle: "with Almond Milk",
                          imageUrl: "assets/images/fvdrink3.png",
                          calories: "30 Kcal",
                          time: "10 Min"
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}