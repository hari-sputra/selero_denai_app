import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // back buttton
                Container(
                  margin: EdgeInsets.only(top: 24),
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed("/home");
                    },
                    child: Image.asset(
                      "assets/icons/cancel.png",
                      width: 16,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffFF4848),
                        shape: CircleBorder(),
                        minimumSize: Size(36, 36)),
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  "Create Account!",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    color: Color(0xffFF4848),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  "Register to get started",
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    color: Color(0xffFF4848),
                  ),
                ),
                SizedBox(height: 34),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromRGBO(255, 72, 72, .5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/signin");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .4,
                          child: Text(
                            "Login",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/signup");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width * .444,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xffFF4848),
                          ),
                          child: Text(
                            "Register",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22),

                // username
                Text(
                  "Username",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                RegisForm(
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: Color(0xffFF4848),
                    ),
                    hint: "Input your Username"),
                SizedBox(height: 22),

                // email
                Text(
                  "Email Address",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                RegisForm(
                    icon: Icon(
                      Icons.email_outlined,
                      color: Color(0xffFF4848),
                    ),
                    hint: "Input your Email"),
                SizedBox(height: 22),

                // password
                Text(
                  "Password",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                RegisForm(
                    icon: Icon(
                      Icons.lock_outlined,
                      color: Color(0xffFF4848),
                    ),
                    hint: "Input your Password"),
                SizedBox(height: 70),
                Container(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.back();
                      Get.toNamed("/signin");
                    },
                    child: Text(
                      "Register",
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
        ),
      ),
    );
  }
}

class RegisForm extends StatelessWidget {
  RegisForm({
    required this.icon,
    required this.hint,
    Key? key,
  }) : super(key: key);

  final icon, hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.montserrat(
        fontSize: 16,
        color: Color(0xffFF4848),
      ),
      decoration: InputDecoration(
        prefixIcon: icon,
        hintText: hint,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 16,
          color: Color.fromRGBO(255, 72, 72, .5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xCCFF4848),
          ),
          borderRadius: BorderRadius.circular(14),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xCCFF4848),
          ),
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
