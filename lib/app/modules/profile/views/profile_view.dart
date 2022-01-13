import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selero_denai_app/app/data/doc.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // appbar
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
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
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("My Profile", style: primaryTxt),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.grey.withOpacity(.3),
                              child: ClipRRect(
                                child: Image.asset("assets/images/user1.jpg"),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                          ),
                          SizedBox(width: 14),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hari Kazuto",
                                style: GoogleFonts.montserrat(
                                  color: red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "kazuto.hari@gmail.com",
                                style: GoogleFonts.montserrat(
                                  color: red.withOpacity(.7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          Image.asset("assets/icons/edit.png", width: 40),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    // saldo widget
                    Container(
                      height: 86,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24, top: 19),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Saldo",
                                  style: GoogleFonts.montserrat(
                                    color: red.withOpacity(.7),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Rp",
                                        style: GoogleFonts.montserrat(
                                          color:
                                              Color(0xffD90429).withOpacity(.7),
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Text(
                                        "500000,-",
                                        style: GoogleFonts.montserrat(
                                          color: red,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 32),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "+ Add Saldo",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: red,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              minimumSize: Size(138, 45),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 18),
                    CardProfile(
                      text: "Lokasi",
                    ),
                    CardProfile(
                      text: "My Order",
                    ),
                    CardProfile(
                      text: "Transaksi",
                    ),
                    CardProfile(
                      text: "Settings",
                    ),
                    SizedBox(height: 48),
                    Container(
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAllNamed("/signin");
                        },
                        child: Text(
                          "Logout",
                          style: GoogleFonts.montserrat(fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 1,
                          primary: Color(0xffFF4848),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
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

class CardProfile extends StatelessWidget {
  CardProfile({
    required this.text,
    Key? key,
  }) : super(key: key);

  final text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () {}, //bisakah dengan ekstrak widget dapat dibagi juga onpressnya?
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.montserrat(
                color: Colors.black87,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black.withOpacity(.2),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        elevation: 2,
        primary: Colors.white,
        minimumSize: Size(double.infinity, 65),
      ),
    );
  }
}
