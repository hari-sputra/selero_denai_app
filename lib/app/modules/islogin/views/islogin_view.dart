import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/islogin_controller.dart';

class IsloginView extends GetView<IsloginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // App Bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/icons/drawer.png",
                        width: 32,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/profile");
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.grey.withOpacity(.3),
                          child: ClipRRect(
                            child: Image.asset("assets/images/user1.jpg"),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hello, Harry!",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, color: Color(0xffFF4848)),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "What will you\neat today?",
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFF4848),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      hintText: "Search your food",
                      hintStyle: TextStyle(
                        color: Color(0xCCFF4848),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xCCFF4848),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0xCCFF4848),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Color(0xCCFF4848),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 225,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFF1B1B1B),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 16,
                              top: 12,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/food-deliv.png",
                                    width: 125,
                                  ),
                                  Text(
                                    "Food Delivery",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Pesan makanan\nkesukaanmu",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 225,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFB60000),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              top: 4,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/pickup.png",
                                    width: 125,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 42,
                              bottom: 20,
                              child: Column(
                                children: [
                                  Text(
                                    "Pick-Up",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Diskon dari\n30% - 50%",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 38),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kategori",
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: Color(0xffFF4848),
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed("/menu");
                        },
                        child: Text(
                          "See all",
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: Color(0xffFF4848),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TabBar(
                        image: "assets/icons/pizza.png",
                        title: "Pizza",
                      ),
                      TabBar(
                        image: "assets/icons/burger.png",
                        title: "Burger",
                      ),
                      TabBar(
                        image: "assets/icons/seafood.png",
                        title: "Seafood",
                      ),
                      TabBar(
                        image: "assets/icons/rice.png",
                        title: "Rice",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabBar extends StatelessWidget {
  TabBar({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final image, title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 90,
          width: 70,
          padding: EdgeInsets.only(top: 8, bottom: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Image.asset(
                image,
                width: 40,
              ),
              SizedBox(height: 14),
              Text(
                title,
                style: GoogleFonts.montserrat(
                    fontSize: 14, color: Color(0xffFF4848)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
