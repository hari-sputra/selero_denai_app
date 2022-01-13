import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //  back button
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
                SizedBox(height: 30),

                // logo
                Center(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset("assets/icons/logo.png"),
                      ),
                      SizedBox(height: 15),
                      // title
                      Text(
                        "Salero Denai",
                        style: GoogleFonts.montserrat(
                          fontSize: 30,
                          color: Color(0xffFF4848),
                        ),
                      ),
                      SizedBox(height: 46),
                      // login & regis button
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
                                width: MediaQuery.of(context).size.width * .444,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xffFF4848),
                                ),
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
                                width: MediaQuery.of(context).size.width * .4,
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
                    ],
                  ),
                ),
                SizedBox(height: 35),
                // email
                Text(
                  "Email Address",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                LoginForm(
                  icon: Icon(
                    Icons.email_outlined,
                    color: Color(0xffFF4848),
                  ),
                  hint: "Input your Email",
                ),
                SizedBox(height: 22),
                // password
                Text(
                  "Password",
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                LoginForm(
                  icon: Icon(
                    Icons.lock_outlined,
                    color: Color(0xffFF4848),
                  ),
                  hint: "Input your pasword",
                ),

                // forgot pw
                SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(height: 28),
                // button
                Container(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed("/islogin");
                    },
                    child: Text(
                      "Login",
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

class LoginForm extends StatelessWidget {
  LoginForm({
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
