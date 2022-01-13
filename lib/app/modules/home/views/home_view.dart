import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  var dialogtext1 = Material(
    child: Text(
      "Login Your Account",
      style: GoogleFonts.montserrat(
        color: Color(0xffFF4848),
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
  var dialogtext2 = Material(
    child: Text(
      "Or",
      style: GoogleFonts.montserrat(
        color: Color(0xffFF4848),
        fontSize: 18,
      ),
    ),
  );

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
                          Get.dialog(
                            Center(
                              child: Container(
                                width: double.infinity,
                                height: 300,
                                margin: EdgeInsets.symmetric(horizontal: 18),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.topRight,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: Image.asset(
                                          "assets/icons/cancel.png",
                                          width: 12,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            primary: Color(0xffFF4848),
                                            shape: CircleBorder(),
                                            minimumSize: Size(24, 24)),
                                      ),
                                    ),
                                    dialogtext1,
                                    SizedBox(height: 18),
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.back();
                                        Get.toNamed("/signin");
                                      },
                                      child: Text(
                                        "Login with Email",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 14,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xffFF4848),
                                          elevation: 0,
                                          minimumSize: Size(262, 45)),
                                    ),
                                    SizedBox(height: 12),
                                    dialogtext2,
                                    SizedBox(height: 12),
                                    Container(
                                      width: 262,
                                      height: 45,
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/icons/google.png",
                                              width: 24,
                                            ),
                                            SizedBox(width: 4),
                                            Text(
                                              "Login with Google",
                                              style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: Color(0xffFF4848),
                                              ),
                                            ),
                                          ],
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          side: BorderSide(
                                            color: Color(0xffFF4848),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.grey.withOpacity(.3),
                          child: ClipRRect(
                            child: Image.asset("assets/icons/user.png"),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hello,",
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
