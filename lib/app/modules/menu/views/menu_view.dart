import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selero_denai_app/app/data/doc.dart';

import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 26, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: red.withOpacity(.8),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back),
                    iconSize: 18,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: red.withOpacity(.8),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    iconSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xffF8F8F8),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
          child: Column(
            children: [
              CardMenu(
                image:
                    "https://images.pexels.com/photos/208537/pexels-photo-208537.jpeg?cs=srgb&dl=pexels-pixabay-208537.jpg&fm=jpg",
                title: "Pizza Spesial",
                restaurant: "Restaurant Satu Hati",
                rating: "4.4 (1k+)",
                price: "100.000,-",
              ),
              CardMenu(
                image:
                    "https://images.pexels.com/photos/2983098/pexels-photo-2983098.jpeg?cs=srgb&dl=pexels-jonathan-borba-2983098.jpg&fm=jpg",
                title: "Burger Spesial",
                restaurant: "Restaurant Satu Hati",
                rating: "4.5 (2k+)",
                price: "25.000,-",
              ),
              CardMenu(
                image:
                    "https://images.unsplash.com/photo-1551326844-4df70f78d0e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=726&q=80",
                title: "Nasi Goreng Udang",
                restaurant: "Restaurant Lain Hati",
                rating: "4.7 (974)",
                price: "23.000,-",
              ),
              CardMenu(
                image:
                    "https://images.unsplash.com/photo-1562967914-608f82629710?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80",
                title: "Ayam goreng",
                restaurant: "Kita Caffe",
                rating: "4.9 (2.5k+)",
                price: "30.000,-",
              ),
              CardMenu(
                image:
                    "https://images.unsplash.com/photo-1560434019-4558f9a9e2a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                title: "Sepaghetti Carbonara",
                restaurant: "Kamu & Dia Caffe",
                rating: "4.5 (500)",
                price: "20.000,-",
              ),
              CardMenu(
                image:
                    "https://images.unsplash.com/photo-1630431341176-531c07a56937?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                title: "Kentang Goreng",
                restaurant: "Kamu & Dia Caffe",
                rating: "4.4 (655)",
                price: "10.000,-",
              ),
              CardMenu(
                image:
                    "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                title: "Pizza Keju",
                restaurant: "Restaurant Satu Hati",
                rating: "4.5 (698)",
                price: "90.000,-",
              ),
              CardMenu(
                image:
                    "https://images.unsplash.com/photo-1603064752734-4c48eff53d05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80",
                title: "Burger Regular",
                restaurant: "Restaurant Satu Hati",
                rating: "4.6 (781)",
                price: "15.000,-",
              ),
              CardMenu(
                image:
                    "https://images.unsplash.com/photo-1622973536968-3ead9e780960?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                title: "Spaghetti Meat Sauce",
                restaurant: "Diantara Kita Caffe",
                rating: "4.7 (1k+)",
                price: "17.999,-",
              ),
              CardMenu(
                image:
                    "https://images.unsplash.com/photo-1594980796927-5c7310699cb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80",
                title: "Meatball Peanut Sauce",
                restaurant: "Kamu & Dia Caffe",
                rating: "4.9 (1.7k+)",
                price: "15.000,-",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  CardMenu({
    required this.image,
    required this.title,
    required this.restaurant,
    required this.rating,
    required this.price,
    Key? key,
  }) : super(key: key);

  final image, title, restaurant, rating, price;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(bottom: 14),
        child: Container(
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: .1,
                blurRadius: 10,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 137,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 16),
              Padding(
                padding: const EdgeInsets.only(top: 17, bottom: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      restaurant,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(.5),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFFBC58),
                          size: 16,
                        ),
                        SizedBox(width: 5),
                        Text(
                          rating,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(.5),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 90),
                      child: Row(
                        children: [
                          Text(
                            "Rp",
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: red.withOpacity(.8),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            price,
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: red,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
